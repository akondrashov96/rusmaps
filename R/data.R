#' Russian cities with population of over 1 million
#'
#' The dataset contains names, population and coordinates of Russian cities with population greater than 1 million
#'
#' @format A SpatialPointsDataFrame object with 15 points with following attibutes:
#' \describe{
#'  \item{id}{custom id assigned}
#'  \item{name}{city name}
#'  \item{pop_2015}{population in 2015, according to Rosstat}
#'  }
#' @source Obtained with QGIS using OpenStreetMap data. Data tables were customized. Population data retrieved from Rosstat.
"cities"

#' Administrative regions of Voronezh city
#'
#' The dataset contains names, population (as of 2010) and administrative level of included regions
#'
#' @format A SpatialPointsDataFrame object with 15 points with following attibutes:
#' \describe{
#'  \item{id}{custom id assigned}
#'  \item{name}{region name}
#'  \item{admin_lvl}{Administrative level of the region}
#'  \item{pop_2015}{population in 2010, according to Rosstat}
#'  }
#' @source Obtained with QGIS using OpenStreetMap data. Data tables were customized. Population data retrieved from Rosstat.
"Voronezh"