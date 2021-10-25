#' Select predictor that create best fit model using forward selection methods
#'
#' @param data a data frame
#' @param formula specify dependent and dependent variables for glm formula
#'
#' @return a  list of candidate variables, list of added variables, and stepwise
#' summary table
#' @export
#'
#' @examples
#' stepwise_selection(data = ToothGrowth, supp ~ .)
stepwise_selection <- function(data, formula) {
  model <- stats::glm(formula, data, family = stats::binomial(logit))
  blorr::blr_step_aic_both(model)
}
