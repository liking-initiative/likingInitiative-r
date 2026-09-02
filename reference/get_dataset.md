# Download one or more datasets

Reads a dataset's ratings from the release, with the metadata needed to
interpret them.

## Usage

``` r
get_dataset(dataset, version = "latest", timepoint = NULL)
```

## Arguments

- dataset:

  A dataset code (`"leeholyoak2021"`), a unique prefix, a dataset id, or
  a character vector of them.

- version:

  Release version, or `"latest"`.

- timepoint:

  Optional rating phase to keep.

## Value

An object of class `likingInitiative_dataset` with elements `data` (a
tibble), `metadata`, `dataset_code` and `version`. For several datasets,
a named list of them.

## Details

Two datasets repeat their rating phase – `leeholyoak2021` (phases 1-3)
and `leehare2023exp2` (phases 1-2). For those, `subject_id` and
`item_id` together are **not** unique; include `timepoint`, or pass the
`timepoint` argument to take a single phase.

## Examples

``` r
# \donttest{
d <- get_dataset("leeholyoak2021")
head(d$data)
#> # A tibble: 6 × 6
#>   subject_id item_id                item_name timepoint rating normalized_rating
#>   <chr>      <chr>                  <chr>         <int>  <dbl>             <dbl>
#> 1 101        08308365-1791-4a48-93… chocolat…         1     77            0.768 
#> 2 101        08308365-1791-4a48-93… chocolat…         2    100            1     
#> 3 101        08308365-1791-4a48-93… chocolat…         3    100            1     
#> 4 101        0969c6e0-a93b-49a4-ab… peach             1      8            0.0707
#> 5 101        0969c6e0-a93b-49a4-ab… peach             2     15            0.141 
#> 6 101        0969c6e0-a93b-49a4-ab… peach             3     22            0.212 
d$metadata$rating_scale_max
#> [1] 100
cite(d)
#> [1] "Lee, D. G., & Holyoak, K. J. (2021). Coherence shifts in attribute evaluations. Decision, 8(4), 257-276. https://doi.org/10.1037/dec0000151"
# }
```
