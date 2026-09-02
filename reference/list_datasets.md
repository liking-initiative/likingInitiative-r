# List the datasets in the database

`timepoints` gives the rating phases a dataset holds. All but two
datasets have a single phase; see
[`get_dataset()`](https://liking-initiative.github.io/likingInitiative-r/reference/get_dataset.md).

## Usage

``` r
list_datasets(version = "latest")
```

## Arguments

- version:

  Release version, or `"latest"`.

## Value

A tibble with one row per dataset.

## Examples

``` r
# \donttest{
list_datasets()
#> # A tibble: 59 × 12
#>    dataset_code      first_author  year study_name  n_subjects n_items n_ratings
#>    <chr>             <chr>        <int> <chr>            <int>   <int>     <int>
#>  1 crosswebb         Cross         2026 Is the who…         14     110       840
#>  2 fernandezmanyattr Fernandez     2026 Correlated…         53      60      3180
#>  3 hamesmcc          Hames         2026 Assessing …         59       8       944
#>  4 richkap           Rich          2026 Prior pref…        395      65     25675
#>  5 sugman            Sugawara      2026 A densely …         31     427     12738
#>  6 toyama2026        Toyama        2026 Multivaria…        200     592    118400
#>  7 fernandezchoosek1 Fernandez     2025 Rank-order…         76      60      4560
#>  8 fernandezchoosek2 Fernandez     2025 Choice ove…        102      60      6120
#>  9 larlua            Larenas       2025 Increased …        957      86     77878
#> 10 marglu            March         2025 Hunger shi…         72      66      4752
#> # ℹ 49 more rows
#> # ℹ 5 more variables: n_timepoints <int>, rating_scale_min <dbl>,
#> #   rating_scale_max <dbl>, rating_scale_type <chr>, paper_doi <chr>
# }
```
