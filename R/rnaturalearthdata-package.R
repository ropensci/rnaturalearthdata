#' @keywords internal
"_PACKAGE"
NULL

# Hide variables from R CMD check
if (getRversion() >= "2.15.1") {
  utils::globalVariables(c(
    "countries110", "countries50",
    "map_units110", "map_units50",
    "sovereignty110", "sovereignty50",
    "coastline110", "coastline50",
    "states50"
  ))
}
