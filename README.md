# QUANTIVERSE

This package is developed as a learning exercise in partial completion of the STAT 547 course at the University of British Columbia

## Development

The steps taken to create this package is as follows:

`devtools::create_package("quantiverse")`

- Initializes the package repository with the necessary minimal files

`devtools::use_git()`

- Initializes the package as a git repository and makes the first commit

`devtools::use_r("CalculateQuantilesWide.R")`

- Creates the R script within `R/` that houses the `CalculateQuantilesWide.R`
- This file was modified by hand to include the implement the actual functionality

`devtools::use_package(c("stats", "dplyr", "stringr"))`

- Adds imports to the DESCRIPTION file for packages that are required by the functions in this package

`devtools::use_pipe()`

- Adds the necessary imports and functions to the package for `magrittr` pipes to work

`devtools::use_testthat()`

- Creates the minimal file structure necessary for `testthat` unit testing within the package
- `tests/testthat/test-CalculateQuantilesWide.R` was modified manually to include basic unit tests for the `CalculateQuantilesWide` function