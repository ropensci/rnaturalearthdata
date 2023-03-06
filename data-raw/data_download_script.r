#data-raw/data_download_script.r

#how data is got into rnaturalearth
#reproducible workflow allowing package data to be updated e.g. when there are updates to Natural Earth.
#just by sourcing this script

#one example file in rnaturalearth
#scale 110 and 50 files in rntauralearthdata
#scale 10 files in rntauralearthhires

library(rnaturalearth)

#countries in rnaturalearth for now
countries110 <- ne_download(scale=110, type='countries', category='cultural')
map_units110 <- ne_download(scale=110, type='map_units', category='cultural')
sovereignty110 <- ne_download(scale=110, type='sovereignty', category='cultural')

countries50 <- ne_download(scale=50, type='countries', category='cultural')
map_units50 <- ne_download(scale=50, type='map_units', category='cultural')
sovereignty50 <- ne_download(scale=50, type='sovereignty', category='cultural')

states50 <- ne_download(scale=50, type='states', category='cultural')

#points for tiny countries that don't appear in higher res data
#not available for scale 10
tiny_countries110 <- ne_download(scale=110, type='tiny_countries', category='cultural')
#devtools::use_data(tiny_countries110, compress='xz', overwrite=TRUE)

tiny_countries50 <- ne_download(scale=50, type='tiny_countries', category='cultural')
#devtools::use_data(tiny_countries50, compress='xz', overwrite=TRUE)

#used this & then 2 loops at end of script to add into package
#data_object_names <- c("tiny_countries110", "tiny_countries50")

coastline110 <- ne_download(scale=110, type='coastline', category='physical')
coastline50 <- ne_download(scale=50, type='coastline', category='physical')


#### todo
#### version numbers, can I check the version number from the VERSION.txt file and save it in the package somewhere ?
#### would want to put that in ne_download()


#### investigating attribute data, chose not to trim

#str(countries110@data)
#'data.frame':	177 obs. of  63 variables:
#str(countries50@data)
#'data.frame':	241 obs. of  63 variables:
#str(map_units110@data)
#'data.frame':	183 obs. of  63 variables:
#str(sovereignty110@data)
#'data.frame':	171 obs. of  63 variables:
#str(tiny_countries110@data)
#'data.frame':	37 obs. of  64 variables:
#but its a spatial points dataframe rather than polygons ...


#temporary for looking at the data
# countries110data <- countries110@data
# countries50data <- countries50@data
# map_units110data <- map_units110@data
# sovereignty110data <- sovereignty110@data
# tiny_countries110data <- tiny_countries110@data
# states50data <- states50@data
# states10data <- states10@data

#states50 only has these countries
#unique(states50$admin)
#Australia                Brazil                   Canada                   United States of America
#length(unique(states10$admin))
#257

#which fields to keep
#decided to keep all fields, they take up very little space
#and if we don't want to worry about joining it may be useful for users to have them
#fieldsToKeep <- c('admin','name','iso_a3','pop_est')

#remember the difference between 'admin' & 'name' in NatEarth, 'name' tends to be abbreviated

#### check polygon geometries (it seems to be no longer be necessary to correct these)
# require(rgeos)
# countries110@polygons=lapply(countries110@polygons, checkPolygonsHoles)


#to allow same operation on all data objects in the package
#data_object_names <- data(package = "rnaturalearthdata")[["results"]][,"Item"]


#### saving data files to correct folder in the package
# relies on working directory being set to root of the package
# BEWARE circular that it uses list of existing data in package
# new data would have to be added outside of this

#the lines below could be replaced by this dangerous eval(parse(text=)) loop
# for (i in 1:length(data_object_names))
# {
#   data_name <- data_object_names[i]
#   #eval(parse(text=paste0("save(",data_name,", file='data/",data_name,".rda'")))
#   #this sorts compression
#   eval(parse(text=paste0("devtools::use_data(",data_name,", compress='xz', overwrite=TRUE)")))
# }
usethis::use_data(map_units110, compress='xz', overwrite=TRUE)
usethis::use_data(sovereignty110, compress='xz', overwrite=TRUE)
usethis::use_data(countries110, compress='xz', overwrite=TRUE)
usethis::use_data(countries50, compress='xz', overwrite=TRUE)
usethis::use_data(map_units50, compress='xz', overwrite=TRUE)
usethis::use_data(sovereignty50, compress='xz', overwrite=TRUE)
usethis::use_data(states50, compress='xz', overwrite=TRUE)
usethis::use_data(tiny_countries110, compress='xz', overwrite=TRUE)
usethis::use_data(tiny_countries50, compress='xz', overwrite=TRUE)
usethis::use_data(coastline110, compress='xz', overwrite=TRUE)
usethis::use_data(coastline50, compress='xz', overwrite=TRUE)
