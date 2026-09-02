# Exercise the real Zenodo path end to end, which the hermetic tests cannot.
# Runs against an empty cache, so every asset it touches is downloaded.
library(likingInitiative)

latest <- likingInitiative:::resolve_version("latest")
stopifnot(grepl("^[0-9]+\\.[0-9]+\\.[0-9]+$", latest))
cat("latest resolves to", latest, "\n")

# Two different pinned versions must each report themselves, not the newest.
for (pinned in c("1.6.1", "1.6.2")) {
  info <- release_info(version = pinned)
  stopifnot(identical(info$version, pinned))
  d <- get_dataset("leeholyoak2021", version = pinned)
  stopifnot(nrow(d$data) > 0)
  cat(sprintf("v%s: %s ratings; leeholyoak2021 has %s rows\n",
              pinned, format(info$n_ratings, big.mark = ","), format(nrow(d$data), big.mark = ",")))
}
cached <- cache_info()$versions
stopifnot(all(c("1.6.1", "1.6.2") %in% cached))

msg <- tryCatch({ release_info(version = "0.0.1"); "" }, error = function(e) conditionMessage(e))
stopifnot(nzchar(msg), grepl("not on Zenodo", msg))
cat("unknown version fails with:", msg, "\n")
