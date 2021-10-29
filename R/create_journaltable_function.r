#' Create a customized summary table
#'
#' @param data A data frame
#' @param y  categorical variable name in the data.
#'
#' @returnA categorical variable name (quoted or unquoted) in data.
#'  Summary statistics will be calculated separately for each level of the variable
#' @export
#'
#' @examples create_journaltable(data =infert, y = 'case')
create_journaltable <- function(data, y) {
  data %>%
    gtsummary::tbl_summary(
      by = all_of(y),
      type = where(is.character) ~ "categorical") %>%
    gtsummary::add_p(test = where(is.numeric) ~ "t.test") %>%
    gtsummary::modify_header(update = list(
      label ~ "**Variable**"
    ))
}


