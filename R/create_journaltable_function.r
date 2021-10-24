#' Create a customized summary table with journal article aesthetics
#'
#'
#' @param data  A data frame
#' @param y A categorical variable name (quoted or unquoted) in data. Summary statistics will
#' be calculated separately for each level of the variable.
#' @param x continuous variable/s
#' @param b  categorical variable/s
#'
#' @return a summary table with journal article aesthetic for all variables in dataset
#' @export
#'
#' @examples create.journaltable(data=trial,y='trt', x='age', b='death')

create.journaltable<-function(data,y,x,b){
  data %>% gtsummary::tbl_summary(by = y,
                                  statistic = list(all_continuous() ~ "{mean} ({sd})"),
                                  type = list(vars(all_of(b)) ~ "categorical"))%>%
    add_p(test=list(vars(all_of(x)) ~ "t.test" ))%>%
    modify_header(update = list(
      label ~ "**Variable**"))
}

