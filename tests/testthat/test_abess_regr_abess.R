install_learners("regr.abess")
load_tests("regr.abess")

test_that("autotest", {
  learner = lrn("regr.abess")
  expect_learner(learner)
  result = run_autotest(learner)
  expect_true(result, info = result$error)
})
