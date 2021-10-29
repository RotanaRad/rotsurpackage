#' Create a customized histogram figure
#'
#' @param x 	a vector of values for which the histogram is desired
#' @param ...
#' one of:
#' a vector giving the breakpoints between histogram cells,
#' a function to compute the vector of breakpoints,
#' a single number giving the number of cells for the histogram,
#' a character string naming an algorithm to compute the number of cells,
#' a function to compute the number of cells.
#'
#' @return a histogram figure
#' @export
#' @examples data(faithful)
#' assess_normality(x = faithful$eruptions, main = "Old Faithful data")
assess_normality <- function(x, ...) {
  # Create a customized histogram
  graphics::hist(x,
    col = grDevices::gray(.5, .2),
    border = "white",
    yaxt = "n",
    ylab = "",
    ...
  )
}
