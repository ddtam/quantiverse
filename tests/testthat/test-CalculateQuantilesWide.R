test_that("Test basic functionality", {
 expect_equal(CalculateQuantilesWide(vec, 2), ans)
 expect_equal(CalculateQuantilesWide(vec_w_na, 2), ans)
 expect_error(CalculateQuantilesWide(vec, "2"), "ntiles must be class numeric; input ntiles has class character")
})
