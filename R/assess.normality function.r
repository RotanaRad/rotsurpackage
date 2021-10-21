# Create a function called assess.normality
#' Title
#'
#' @param x 	a vector of values for which the histogram is desired
#' @param ...
#'one of:
#'a vector giving the breakpoints between histogram cells,
#'a function to compute the vector of breakpoints,
#'a single number giving the number of cells for the histogram,
#'a character string naming an algorithm to compute the number of cells (see ‘Details’),
#'a function to compute the number of cells.
#'
#' @return
#' @export
#'
#' @examples
#' data(faithful)
#'assess.normality (eruptions, main = "Old Faithful data")


assess.normality <- function(x, ...) {
  # Create a customized histogram
  hist(x,
       col = gray (.5, .2),
       border = "white",
       yaxt = "n",
       ylab = "",
       ...)
}
