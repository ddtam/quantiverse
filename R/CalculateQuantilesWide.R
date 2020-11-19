#' Calculate quantile cutoffs in a wide format
#'
#' @param nums.c Numeric vector.
#' @param ntiles Integer.
#' @param verbose Boolean.
#' @param ... Other arguments passed to stats:quantile
#'
#' @return
#' A tibble containing the quantile cutoffs in a single row.
#' @export
#'
#' @examples
#' CalculateQuantilesWide(seq(1, 100))
CalculateQuantilesWide <- function(nums.c, ntiles = 4, verbose = FALSE, ...) {
  # validate inputs
  if (verbose) print("Validating input...")

  if (!is.numeric(nums.c)) {
    stop(sprintf("nums.c must be class numeric; input nums.c has class %s", class(nums.c)))
  } else if (!is.numeric(ntiles)) {
    stop(sprintf("ntiles must be class numeric; input ntiles has class %s", class(ntiles)))
  }

  # calculate quantiles and spread results in a wide format
  if (verbose) print("Calculating quantiles...")

  result.tib <- stats::quantile(nums.c, probs = seq(0, 1, 1 / ntiles), na.rm = TRUE, ...) %>%
    t %>%
    dplyr::as_tibble()

  # round quartile fractions for column names
  if (verbose) print("Renaming columns for clarity...")

  quantile_fracs <- colnames(result.tib) %>%
    stringr::str_remove("%") %>%
    as.numeric() %>%
    round()

  colnames(result.tib) <- paste0("q_", quantile_fracs)

  if (verbose) print("Done!")

  return(result.tib)
}
