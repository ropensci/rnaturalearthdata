# data-raw/data_download_script.r

# how data is got into rnaturalearth
# reproducible workflow allowing package data to be updated e.g. when there are updates to Natural Earth.
# just by sourcing this script

# one example file in rnaturalearth
# scale 110 and 50 files in rntauralearthdata
# scale 10 files in rntauralearthhires

library(rnaturalearth)

# countries in rnaturalearth for now
countries110 <- ne_download(scale = 110, type = "countries", category = "cultural")
map_units110 <- ne_download(scale = 110, type = "map_units", category = "cultural")
sovereignty110 <- ne_download(scale = 110, type = "sovereignty", category = "cultural")

countries50 <- ne_download(scale = 50, type = "countries", category = "cultural")
map_units50 <- ne_download(scale = 50, type = "map_units", category = "cultural")
sovereignty50 <- ne_download(scale = 50, type = "sovereignty", category = "cultural")

states50 <- ne_download(scale = 50, type = "states", category = "cultural")

# points for tiny countries that don't appear in higher res data
# not available for scale 10
tiny_countries110 <- ne_download(scale = 110, type = "tiny_countries", category = "cultural")
# devtools::use_data(tiny_countries110, compress='xz', overwrite=TRUE)

tiny_countries50 <- ne_download(scale = 50, type = "tiny_countries", category = "cultural")
# devtools::use_data(tiny_countries50, compress='xz', overwrite=TRUE)

# used this & then 2 loops at end of script to add into package
# data_object_names <- c("tiny_countries110", "tiny_countries50")

coastline110 <- ne_download(scale = 110, type = "coastline", category = "physical")
coastline50 <- ne_download(scale = 50, type = "coastline", category = "physical")

usethis::use_data(map_units110, compress = "xz", overwrite = TRUE)
usethis::use_data(sovereignty110, compress = "xz", overwrite = TRUE)
usethis::use_data(countries110, compress = "xz", overwrite = TRUE)
usethis::use_data(countries50, compress = "xz", overwrite = TRUE)
usethis::use_data(map_units50, compress = "xz", overwrite = TRUE)
usethis::use_data(sovereignty50, compress = "xz", overwrite = TRUE)
usethis::use_data(states50, compress = "xz", overwrite = TRUE)
usethis::use_data(tiny_countries110, compress = "xz", overwrite = TRUE)
usethis::use_data(tiny_countries50, compress = "xz", overwrite = TRUE)
usethis::use_data(coastline110, compress = "xz", overwrite = TRUE)
usethis::use_data(coastline50, compress = "xz", overwrite = TRUE)
