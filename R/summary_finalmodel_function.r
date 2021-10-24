
#' Create a summary table with results of a glm model
#'
#' @param data a data frame
#' @param formula specify dependent and dependent variables for glm formula
#'
#' @return summaries of the results of various model fitting functions.
#' @export
#'
#' @examples summary_finalmodel(trial,(substitute(response~age+factor(death))))

summary_finalmodel<-function (data, formula){
  final.model<-glm(formula, data, family = binomial(logit))
  model_summary<-summary(final.model)
  return(model_summary)
}




