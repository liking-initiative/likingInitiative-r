## Resubmission

This is a resubmission addressing both points raised by Leonore Hochhauser on
2026-09-21.

* **Reference in DESCRIPTION.** The database the package provides access to is
  now cited in the Description field as Fernandez, Goyal and Krajbich (2026)
  <doi:10.5281/zenodo.22216442>.

* **Writing to the user's home filespace.** Downloaded release files were
  cached under `tools::R_user_dir()` by default. The default is now a
  directory inside `tempdir()`, so no function writes outside the session's
  temporary directory unless the user asks for it. A new exported function,
  `use_persistent_cache()`, opts in to a cache that survives the session, and
  `options(likingInitiative.cache_dir = )` or `LIKING_INITIATIVE_CACHE_DIR`
  name a directory directly. Examples, tests and vignettes write only to
  `tempdir()`.

## Test environments

`R CMD check --as-cran` via GitHub Actions (r-lib/actions v2):

* macOS (latest), R release
* Windows (latest), R release
* Ubuntu (latest), R release, oldrel-1 and devel

win-builder, R Under development (unstable), 2026-09-22.

Also locally on macOS (Darwin 23.5.0), R 4.5.3, with `--as-cran` and remote
incoming checks enabled.

## R CMD check results

0 errors | 0 warnings | 1 note

The note is "New submission"; this is the package's first CRAN submission.

## Notes for reviewers

* Tests are hermetic: they run against a local release directory named by
  `LIKING_INITIATIVE_RELEASE_DIR` and skip cleanly when none is present, so
  `R CMD check` needs no network for them.
* Examples that download are guarded with `@examplesIf interactive()`, so a
  check run executes none of them.
