# The whole corpus in one call

The whole corpus in one call

## Usage

``` r
load_database(version = "latest")
```

## Arguments

- version:

  Release version, or `"latest"`.

## Value

A list of tibbles: `ratings`, `studies`, `datasets`, `items`. Held in
memory after the first call.

## Examples

``` r
# \donttest{
db <- load_database()
nrow(db$ratings)
#> [1] 759399
# }
```
