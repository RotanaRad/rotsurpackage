#' Read in public data set URL file from github's website
#'
#' @param urlfile link where the CSV file of dataset is located
#'
#' @return output list of variable names, type, and observations
#' @export
#'
#' @examples
#' download_data(urlfile ="https://raw.githubusercontent.com/RotanaRad/rotsurpackage/main/GLOW.csv")
#'
download_data <- function(urlfile) {
  utils::read.csv(url(urlfile))
}

