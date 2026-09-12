## Test environments

`R CMD check --as-cran` via GitHub Actions (r-lib/actions v2), 2026-09-02:

* macOS (latest), R 4.6.1 (2026-06-24)
* Windows (latest), R 4.6.1 (2026-06-24)
* Ubuntu (latest), R 4.6.1 (2026-06-24)
* Ubuntu (latest), R 4.5.3 (2026-03-11), oldrel-1
* Ubuntu (latest), R Under development (unstable) (2026-06-21 r90185)

win-builder, R Under development (unstable) (2026-09-10 r90519 ucrt),
Windows Server 2022 x64, 2026-09-12.

Also locally on macOS (Darwin 23.5.0), R 4.5.3, 2026-09-11, with
`--as-cran` and remote incoming checks enabled.

## R CMD check results

0 errors | 0 warnings | 1 note

The note is "New submission"; this is the package's first CRAN submission.

## Notes for reviewers

* The package downloads release files from Zenodo on first use and caches
  them under `tools::R_user_dir("likingInitiative", "cache")` (or wherever
  `LIKING_INITIATIVE_CACHE_DIR` points). Nothing is written elsewhere, and
  `clear_cache()` removes what has been stored.
* Tests are hermetic: they run against a local release directory named by
  `LIKING_INITIATIVE_RELEASE_DIR` and skip cleanly when none is present, so
  `R CMD check` needs no network for them.
* Examples that download are guarded with `@examplesIf interactive()`, so a
  check run executes none of them and writes nothing to the cache.
