# Delete cached release files

Delete cached release files

## Usage

``` r
clear_cache(version = NULL)
```

## Arguments

- version:

  Version to remove. `NULL` (default) clears every version.

## Value

Invisibly, the number of bytes freed.

## Examples

``` r
# \donttest{
clear_cache()
#> ✔ Freed 355K.
# }
```
