# Version, date and headline counts for the release in use

Version, date and headline counts for the release in use

## Usage

``` r
release_info(version = "latest")
```

## Arguments

- version:

  Release version, or `"latest"`.

## Value

A list describing the release.

## Examples

``` r
# \donttest{
release_info()
#> $version
#> [1] "1.6.2"
#> 
#> $date
#> [1] "2026-09-01"
#> 
#> $n_studies
#> [1] 38
#> 
#> $n_datasets
#> [1] 59
#> 
#> $n_items
#> [1] 2217
#> 
#> $n_ratings
#> [1] 759399
#> 
#> $schema_migrations
#> $schema_migrations[[1]]
#> [1] "001"
#> 
#> $schema_migrations[[2]]
#> [1] "002"
#> 
#> $schema_migrations[[3]]
#> [1] "003"
#> 
#> $schema_migrations[[4]]
#> [1] "004"
#> 
#> $schema_migrations[[5]]
#> [1] "ds-yoo2025"
#> 
#> $schema_migrations[[6]]
#> [1] "ds-smithspiller1"
#> 
#> $schema_migrations[[7]]
#> [1] "ds-smithspiller2"
#> 
#> $schema_migrations[[8]]
#> [1] "ds-leeholyoak2021"
#> 
#> $schema_migrations[[9]]
#> [1] "ds-fernandezset1"
#> 
#> $schema_migrations[[10]]
#> [1] "ds-fernandezset2"
#> 
#> $schema_migrations[[11]]
#> [1] "ds-fernandezset3"
#> 
#> $schema_migrations[[12]]
#> [1] "ds-fernandezchoosek1"
#> 
#> $schema_migrations[[13]]
#> [1] "ds-fernandezchoosek2"
#> 
#> $schema_migrations[[14]]
#> [1] "ds-fernandezmanyattr"
#> 
#> $schema_migrations[[15]]
#> [1] "ds-fernandezeeg"
#> 
#> $schema_migrations[[16]]
#> [1] "ds-leehare2023exp1"
#> 
#> $schema_migrations[[17]]
#> [1] "ds-leehare2023exp2"
#> 
#> $schema_migrations[[18]]
#> [1] "005"
#> 
#> $schema_migrations[[19]]
#> [1] "006"
#> 
#> $schema_migrations[[20]]
#> [1] "007"
#> 
#> $schema_migrations[[21]]
#> [1] "008"
#> 
#> $schema_migrations[[22]]
#> [1] "009"
#> 
#> $schema_migrations[[23]]
#> [1] "010"
#> 
#> $schema_migrations[[24]]
#> [1] "011"
#> 
#> $schema_migrations[[25]]
#> [1] "012"
#> 
#> $schema_migrations[[26]]
#> [1] "ds-richkap"
#> 
#> $schema_migrations[[27]]
#> [1] "013"
#> 
#> $schema_migrations[[28]]
#> [1] "ds-sugman"
#> 
#> $schema_migrations[[29]]
#> [1] "ds-toyama2026"
#> 
#> $schema_migrations[[30]]
#> [1] "ds-crosswebb"
#> 
#> $schema_migrations[[31]]
#> [1] "014"
#> 
#> $schema_migrations[[32]]
#> [1] "ds-chenhol1"
#> 
#> $schema_migrations[[33]]
#> [1] "ds-chenhol2"
#> 
#> $schema_migrations[[34]]
#> [1] "ds-chenhol7"
#> 
#> $schema_migrations[[35]]
#> [1] "015"
#> 
#> $schema_migrations[[36]]
#> [1] "ds-hamesmcc"
#> 
#> $schema_migrations[[37]]
#> [1] "ds-eicgeo"
#> 
#> $schema_migrations[[38]]
#> [1] "016"
#> 
#> $schema_migrations[[39]]
#> [1] "017"
#> 
#> $schema_migrations[[40]]
#> [1] "018"
#> 
#> $schema_migrations[[41]]
#> [1] "019"
#> 
#> $schema_migrations[[42]]
#> [1] "020"
#> 
#> $schema_migrations[[43]]
#> [1] "021"
#> 
#> $schema_migrations[[44]]
#> [1] "022"
#> 
#> $schema_migrations[[45]]
#> [1] "023"
#> 
#> $schema_migrations[[46]]
#> [1] "024"
#> 
#> $schema_migrations[[47]]
#> [1] "025"
#> 
#> $schema_migrations[[48]]
#> [1] "026"
#> 
#> $schema_migrations[[49]]
#> [1] "027"
#> 
#> $schema_migrations[[50]]
#> [1] "ds-chenhol3"
#> 
#> $schema_migrations[[51]]
#> [1] "ds-chenhol4"
#> 
#> $schema_migrations[[52]]
#> [1] "ds-chenhol5"
#> 
#> $schema_migrations[[53]]
#> [1] "ds-chenhol6"
#> 
#> $schema_migrations[[54]]
#> [1] "028"
#> 
#> $schema_migrations[[55]]
#> [1] "029"
#> 
#> 
#> $license
#> [1] "MIT (database and code); source data remain subject to the terms of the original publications"
#> 
# }
```
