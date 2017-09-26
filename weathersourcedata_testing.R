install.packages("weatherData")

library(weatherData)
getDetailedWeather("KBOS", "2017-09-25", station_type = "airportCode",
                   opt_temperature_columns = TRUE, opt_all_columns = FALSE,
                   opt_custom_columns = FALSE, custom_columns = NULL,
                   opt_compress_output = FALSE, opt_verbose = FALSE, opt_warnings = TRUE)

install.packages("rnoaa")

library(rnoaa)
#install.packages("lawn")
library(lawn)
library(dplyr)
library(sp)
library(leaflet)

ncdc(datasetid = 'GHCND', stationid = 'GHCND:USW00014895', startdate = '2013-10-01',
     enddate = '2013-12-01')

lawn_bbox_polygon(c(-122.2047, 47.5204, -122.1065, 47.6139)) %>% view

#Cohen-McCreigth "Weather data pipeline for R"
require(devtools)
install_github("mpiccirilli/weatheR")
require(weatheR)
