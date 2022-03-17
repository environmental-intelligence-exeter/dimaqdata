
<!-- README.md is generated from README.Rmd. Please edit that file -->

# dimaqdata

<!-- badges: start -->
<!-- badges: end -->

The goal of dimaqdata is to access and plot DIMAQ data.

## Installation

You can install the development version of dimaqdata from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("environmental-intelligence-exeter/dimaqdata")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(dimaqdata)
grid_data = dimaqdata::pred_all()

#      Longitude Latitude CountryName ISO3                   GBDRegion     GBDSuperRegion          SDGRegion WHORegion WHOIncomeRegion        POP Urban     Mean   Median  Lower95  Upper95   StdDev
# 6265     14.95   -11.45      Angola  AGO Sub-Saharan Africa, Central Sub-Saharan Africa Sub-Saharan Africa      AFRO             AFR  4311.4014     0 43.09957 40.86143 20.26946 78.69233 15.60509
# 6266     17.05   -10.55      Angola  AGO Sub-Saharan Africa, Central Sub-Saharan Africa Sub-Saharan Africa      AFRO             AFR   594.7883     0 47.18323 43.77710 21.03159 89.64439 18.88395
# 6267     20.05    -8.45      Angola  AGO Sub-Saharan Africa, Central Sub-Saharan Africa Sub-Saharan Africa      AFRO             AFR   800.3763     0 49.85325 46.61862 22.07525 96.61560 20.35179
# 6268     21.65   -15.55      Angola  AGO Sub-Saharan Africa, Central Sub-Saharan Africa Sub-Saharan Africa      AFRO             AFR   153.5165     0 39.51796 36.63955 19.07645 71.91774 13.69798
# 6269     20.45    -6.95      Angola  AGO Sub-Saharan Africa, Central Sub-Saharan Africa Sub-Saharan Africa      AFRO             AFR  2752.1230     0 49.57304 45.58800 20.80468 98.65109 20.35229
# 6270     16.35    -9.35      Angola  AGO Sub-Saharan Africa, Central Sub-Saharan Africa Sub-Saharan Africa      AFRO             AFR 25956.2363     0 45.67714 42.92597 20.20633 93.04997 19.03817
#      Year
# 6265 2011
# 6266 2011
# 6267 2011
# 6268 2011
# 6269 2011
# 6270 2011
```
