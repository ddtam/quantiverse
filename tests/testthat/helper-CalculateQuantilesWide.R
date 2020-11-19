vec <- c(1.1, 2, 5.934, 30, 100, 3 * 10 ** 5)

vec_w_na <- c(vec, NA)

ans <-
 dplyr::tribble(
  ~q_0, ~q_50, ~q_100,
  1.1, 17.967, 3e+05
 )
