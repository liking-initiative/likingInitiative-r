# List the stimuli in the database

List the stimuli in the database

## Usage

``` r
list_items(version = "latest")
```

## Arguments

- version:

  Release version, or `"latest"`.

## Value

A tibble with one row per item.

## Examples

``` r
# \donttest{
list_items()
#> # A tibble: 2,217 × 4
#>    item_id                              name        standardized_name n_datasets
#>    <chr>                                <chr>       <chr>                  <int>
#>  1 7534687f-62e4-4525-b9a8-6e6fde754f2c 100grandsm… 100grandsmall              2
#>  2 8b59c0b9-9dd0-4f3e-89ed-a42a558fe530 3musketeers 3musketeers               18
#>  3 68ec5130-3ca8-4d3e-a3e8-27ecb54f5090 almondjoy   almondjoy                 15
#>  4 364cc046-db66-41b4-b2a4-78a33f8e4596 animalcrac… animalcrackers             2
#>  5 31e4d240-c804-4d84-8212-c4e4d02c1156 babyruth    babyruth                  12
#>  6 5ebcceee-5b2e-4801-b103-d950cce800d2 butterfing… butterfinger              16
#>  7 e9a9b400-2b89-4904-99ca-bb75dc1b2a9c cheesydori… cheesydoritos              6
#>  8 722d4f51-af78-40d3-a03a-4633aab8b893 cheetos     cheetos                    5
#>  9 c8cf2991-ae2f-40e3-8c9b-81e79eaeb446 chipsahoys… chipsahoysmall             3
#> 10 1bb294ac-719b-487d-b7d1-9a7f990c65f5 cupcakes    cupcakes                   9
#> # ℹ 2,207 more rows
# }
```
