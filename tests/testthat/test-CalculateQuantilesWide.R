test_that("Basic functionality", {
  # test expected output
  expect_equal(CalculateQuantilesWide(vec, 2), ans)
  # test handling of NA values
  expect_equal(CalculateQuantilesWide(vec_w_na, 2), ans)
})

test_that("Error handling", {
  # throws error when `ntiles` is not numeric
  expect_error(CalculateQuantilesWide(vec, "2"), "ntiles must be class numeric; input ntiles has class character")
})
