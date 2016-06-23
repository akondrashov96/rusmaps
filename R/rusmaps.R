#' rusmaps
#'
#' @name rusmaps
#' @docType package
#' @author Artem
NULL

#' longitude_correction (brief)
#'
#' longitude_correction (more detailed)
#'
#' longitude_correction (even more detailed)
#'
#' @param x numeric vector of longitudes
#' @return non-negative versions of longitued
#' @export
#' @examples
#' longitude_correction(c(-3.5, 10.8))

longitude_correction <- function(x) {
  if (x < 0) {
    x <- 359.999 + x
  }
  
  return(x)
}

