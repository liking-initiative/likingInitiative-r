# Resolving a release version and fetching its assets

The package reads versioned release files rather than a live service, so
a pinned version returns the same rows however long from now, and
analyses keep working when the web service does not.

## Details

Assets come from Zenodo, which needs no credentials and mints a
permanent DOI per version. The package resolves the *concept* record –
what Zenodo calls "all versions" – so `latest` follows new releases
without the package itself needing an update.

Set the `likingInitiative.release_dir` option (or the
`LIKING_INITIATIVE_RELEASE_DIR` environment variable) to a directory
built by `scripts/build_release.py` to work against an unreleased build.
The test suite uses this, so tests never touch the network.
