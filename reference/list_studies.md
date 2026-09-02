# List the publications in the database

List the publications in the database

## Usage

``` r
list_studies(version = "latest")
```

## Arguments

- version:

  Release version, or `"latest"`.

## Value

A tibble with one row per study.

## Examples

``` r
# \donttest{
list_studies()
#> # A tibble: 38 × 7
#>    study_id                           name  authors  year doi   journal citation
#>    <chr>                              <chr> <chr>   <int> <chr> <chr>   <chr>   
#>  1 d915569b-2a59-4e19-a7bb-b578342d4… Spac… Bakkou…  2018 10.1… PLOS O… Bakkour…
#>  2 cf1f9773-10b9-49e3-82f8-7465eaf75… The … Bakkou…  2019 10.7… eLife   Bakkour…
#>  3 9c07e690-3f2b-41d7-af70-1eea9dff3… Inve… Bailey…  2024 10.1… Journa… Bailey,…
#>  4 05a78e01-8604-4cfe-937a-b10b01cda… Deco… Desai,…  2022 10.1… Journa… Desai, …
#>  5 7e3408fa-62c7-4b73-9624-c7b573201… Peri… Eum, B…  2023 10.1… Psycho… Eum, B.…
#>  6 f1cabfd6-0835-4ce6-9fa4-f1f6ded5d… Expl… Folke,…  2016 10.1… Nature… Folke, …
#>  7 0f81ce35-810c-47e8-9106-e41f25b16… Atti… Gwinn,…  2020 10.1… Journa… Gwinn, …
#>  8 7eee4f7e-65d9-4cce-ba1d-78df125e3… The … Gwinn,…  2019 10.1… Cognit… Gwinn, …
#>  9 0315745a-088e-4773-bfec-513f8c0f9… Ince… Hasche…  2021 10.1… Judgme… Hascher…
#> 10 47a2ccd3-4768-49f8-8838-c8b848937… Hung… March,…  2025 10.7… eLife   March, …
#> # ℹ 28 more rows
# }
```
