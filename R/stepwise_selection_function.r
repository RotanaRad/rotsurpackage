#' Select predicotor that create best fit model using forward selection methods
#'
#' @param data a data frame
#' @param formula specify dependent and dependent variables for glm formula
#'
#' @return a  list of candidiate variables, list of added variables, and stepwise
#' summary table
#' @export
#'
#' @examples stepwise_selection(trial, response~.)


stepwise_selection <- function(data, formula){
  model<-glm(formula, data, family = binomial(logit))
  blorr::blr_step_aic_both(model)
}


