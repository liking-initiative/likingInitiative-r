## Test environments

`R CMD check --as-cran --no-manual` via GitHub Actions (r-lib/actions v2),
2026-09-02:

* macOS (latest), R 4.6.1
* Windows (latest), R 4.6.1
* Ubuntu (latest), R 4.6.1
* Ubuntu (latest), R 4.5.3 (oldrel-1)
* Ubuntu (latest), R Under development (unstable) (2026-06-21 r90185)

Also locally on macOS (Darwin 23.5.0), R 4.6.1.

## R CMD check results

0 errors | 0 warnings | 0 notes, on every platform above.

## Notes for reviewers

* The package downloads release files from Zenodo on first use and caches
  them under `tools::R_user_dir("likingInitiative", "cache")` (or wherever
  `LIKING_INITIATIVE_CACHE_DIR` points). Nothing is written elsewhere.
* Tests are hermetic: they run against a local release directory named by
  `LIKING_INITIATIVE_RELEASE_DIR` and skip cleanly when none is present, so
  `R CMD check` needs no network. Examples that would download are wrapped in
  `\donttest{}`.
* This is the first CRAN submission.
