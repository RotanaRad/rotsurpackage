#' Download and read in public data set file from github's website
#'
#' @param urlfile  github repository link where the CSV file of dataset
#'
#' @return A tibble with variable names, type, and observations
#' @export
#'
#' @examples download.data(urlfile='https://raw.githubusercontent.com/RotanaRad/rotsurpackage/main/GLOW.csv')

download_data<- function (urlfile){
 read_csv(url(urlfile))
}
