#' rusmaps
#'
#' @name rusmaps
#' @docType package
#' @author Artem Kondrashov
NULL

#' Set positive values to negative longitudes
#'
#' longitude_correction() receives a vector of longitudes
#' and turns them positive in case they are not.
#'
#' @param x numeric vector of longitudes
#' @return Non-negative versions of longitudes
#' @export
#' @examples
#' longitude_correction(c(-3.5, 10.8))

longitude_correction <- function(x) {
  if (x < 0) {
    x <- 359.999 + x
  }
  
  return(x)
}


#' Restore a polygon cut by 180 meridian
#'
#' The function reads a file of SpatialPolygonsDataFrame and unifies
#' polygons if they are separated by 180 meridian
#'
#' @param y a SpatialPolygonsDataFrame object
#' @return Whole polygons, if they were cut by 180 meredian.
#' @export
#' @examples
#' restore180(Voronezh)

restore180 <- function(y) {
  for (i in 1:length(y@polygons)) {
    for (j in 1:length(y@polygons[[i]]@Polygons)) {
      y@polygons[[i]]@Polygons[[j]]@coords[, 1] <- sapply(
        y@polygons[[i]]@Polygons[[j]]@coords[, 1], 
        longitude_correction)
    }
  }
  return(y)
}






