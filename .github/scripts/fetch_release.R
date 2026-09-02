# Mirror one published release of the database from Zenodo into a directory
# shaped like a locally built release, so the hermetic test suite can run
# against real, checksummed release files.
#
#   Rscript .github/scripts/fetch_release.R 1.6.2 release
#
# Needs only httr2 and jsonlite, both package dependencies.

fetch_release <- function(version, dest) {
  api <- "https://zenodo.org/api"
  concept <- "22216442"
  get <- function(url, path = NULL) {
    req <- httr2::req_retry(
      httr2::req_error(httr2::req_timeout(httr2::request(url), 300),
                       is_error = function(...) FALSE),
      max_tries = 6,
      is_transient = function(resp) httr2::resp_status(resp) %in% c(429, 500, 502, 503, 504)
    )
    resp <- httr2::req_perform(req, path = path)
    if (httr2::resp_status(resp) != 200) stop("HTTP ", httr2::resp_status(resp), " for ", url)
    resp
  }

  url <- sprintf("%s/records?q=conceptrecid:%s&all_versions=true&size=25", api, concept)
  record <- NULL; published <- character()
  while (!is.null(url) && is.null(record)) {
    page <- httr2::resp_body_json(get(url))
    for (hit in page$hits$hits) {
      found <- hit$metadata$version
      published <- c(published, found)
      if (identical(found, version)) { record <- hit; break }
    }
    url <- page$links[["next"]]
  }
  if (is.null(record)) stop("no release ", version, " on Zenodo; published: ",
                            paste(sort(published), collapse = ", "))

  entries <- httr2::resp_body_json(get(sprintf("%s/records/%s/files", api, record$id)))$entries
  fetched <- 0L; skipped <- 0L
  for (entry in entries) {
    expected <- sub("^md5:", "", entry$checksum)
    # Zenodo's file store is flat; nested release paths were uploaded with "/"
    # replaced by "__".
    target <- file.path(dest, gsub("__", "/", entry$key, fixed = TRUE))
    if (file.exists(target) && unname(tools::md5sum(target)) == expected) {
      skipped <- skipped + 1L; next
    }
    dir.create(dirname(target), recursive = TRUE, showWarnings = FALSE)
    get(entry$links$content, path = target)
    actual <- unname(tools::md5sum(target))
    if (actual != expected) stop(entry$key, ": checksum ", actual, " != ", expected)
    fetched <- fetched + 1L
  }
  catalog <- jsonlite::fromJSON(file.path(dest, "catalog.json"))
  if (!identical(catalog$release$version, version)) {
    stop("catalog says ", catalog$release$version, ", expected ", version)
  }
  cat(sprintf("release %s (record %s): %d fetched, %d already present, %d files in %s\n",
              version, record$id, fetched, skipped, length(entries), dest))
  invisible(dest)
}

if (sys.nframe() == 0L) {
  args <- commandArgs(trailingOnly = TRUE)
  if (length(args) != 2) stop("usage: fetch_release.R VERSION DEST")
  fetch_release(args[1], args[2])
}
