#' Create a customized summary table
#'
#' @param data  A data frame
#' @param y A categorical variable name (quoted or unquoted) in data.
#'  Summary statistics will be calculated separately for each level of the variable.
#' @param b categorical variable/s
#' @param x continuous variable/s
#'
#' @return a customized summary table for all variables in data set with journal
#' article aesthetics
#' @export
#' @examples
#' \dontrun{
#' create_journaltable(data = gtsummary::trial, y = "trt", b = ("death"), x = ("age"))
#' }
#'
create_journaltable <- function(data, y, b, x) {
  data %>%
    gtsummary::tbl_summary(
      by = y,
      statistic = list(all_continuous() ~ "{mean} ({sd})"),
      type = list(vars(all_of(b)) ~ "categorical")
    ) %>%
    gtsummary::add_p(test = list(vars(all_of(x)) ~ "t.test")) %>%
    gtsummary::modify_header(update = list(
      label ~ "**Variable**"
    ))
}
