# BibTeX for a dataset's source publication

BibTeX for a dataset's source publication

## Usage

``` r
bibtex(x, ...)
```

## Arguments

- x:

  A dataset from
  [`get_dataset()`](https://liking-initiative.github.io/likingInitiative-r/reference/get_dataset.md).

- ...:

  Unused.

## Value

A character string holding a BibTeX entry.

## Examples

``` r
# \donttest{
bibtex(get_dataset("leeholyoak2021"))
#> [1] "@article{lee2021,\n  author  = {Lee, D. G. and Holyoak, K. J.},\n  title   = {Coherence shifts in attribute evaluations},\n  year    = {2021},\n  journal = {Decision},\n  doi     = {10.1037/dec0000151}\n}"
# }
```
