#' rnaturalearthdata : world vector maps from Natural Earth
#'
#' Facilitates world mapping by making \href{http://www.naturalearthdata.com/}{Natural Earth} map data more easily available to R users.
#'
#' @name rnaturalearthdata
#' @docType package
#' @seealso \code{\link[rnaturalearth]{ne_countries}} \code{\link[rnaturalearth]{ne_states}} \code{\link[rnaturalearth]{ne_download}}
#' @import sp
NULL

# Hide variables from R CMD check
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c("countries110", "countries50",
                           "map_units110", "map_units50",
                           "sovereignty110", "sovereignty50",
                           "coastline110", "coastline50",
                           "states50"
                           ))
}
