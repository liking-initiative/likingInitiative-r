# One stimulus across every study that used it

The cross-study view. Because the underlying studies use different
response scales, compare on `normalized_rating`, not `rating`.

## Usage

``` r
get_item(item, version = "latest")
```

## Arguments

- item:

  An item name, e.g. `"kitkat"`.

- version:

  Release version, or `"latest"`.

## Value

An object of class `likingInitiative_item` with `data`, `datasets` and
`version`.

## Details

Only the first rating phase of a repeated-phase dataset is included, so
those studies do not carry extra weight in a cross-study comparison.

## Examples

``` r
# \donttest{
k <- get_item("kitkat")
k$data
#> # A tibble: 1,626 × 8
#>    dataset_code       study_id     subject_id item_id item_name timepoint rating
#>    <chr>              <chr>        <chr>      <chr>   <chr>         <int>  <dbl>
#>  1 bakbot_spacing_rep d915569b-2a… 102        611f48… kitkat            1  1.77 
#>  2 bakbot_spacing_rep d915569b-2a… 103        611f48… kitkat            1  0.507
#>  3 bakbot_spacing_rep d915569b-2a… 105        611f48… kitkat            1  2.71 
#>  4 bakbot_spacing_rep d915569b-2a… 106        611f48… kitkat            1  1.22 
#>  5 bakbot_spacing_rep d915569b-2a… 107        611f48… kitkat            1  1.14 
#>  6 bakbot_spacing_rep d915569b-2a… 108        611f48… kitkat            1  1.47 
#>  7 bakbot_spacing_rep d915569b-2a… 109        611f48… kitkat            1  0.800
#>  8 bakbot_spacing_rep d915569b-2a… 110        611f48… kitkat            1  1.77 
#>  9 bakbot_spacing_rep d915569b-2a… 111        611f48… kitkat            1  0.653
#> 10 bakbot_spacing_rep d915569b-2a… 112        611f48… kitkat            1  1.15 
#> # ℹ 1,616 more rows
#> # ℹ 1 more variable: normalized_rating <dbl>
# }
```
