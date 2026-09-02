# Report on the local asset cache

Shows where downloaded release files are kept, how much space they use,
and which versions are present.

## Usage

``` r
cache_info()
```

## Value

A list, invisibly, with `path`, `bytes` and `versions`.

## Examples

``` r
cache_info()
#> ℹ Cache: /home/runner/.cache/R/likingInitiative
#> ℹ Size: 355K across 2 files
#> ℹ Versions: "1.6.2"
```
