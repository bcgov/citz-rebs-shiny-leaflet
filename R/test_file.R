# test server file
library(dplyr)
library(shiny)
library(bslib)
library(leaflet)
library(sf)
library(here)
library(leaflet.extras)
library(bcmaps)
library(rmapshaper)

buildings <- read.csv(here("data/buildings.csv"))

geo_buildings <- buildings |>
    select(Identifier, Lat, Lon) |>
    filter(!is.na(Lat) & !is.na(Lon)) |>
    st_as_sf(coords = c("Lon", "Lat"), crs = 4326)

leaflet() |>
    addProviderTiles(
        'CartoDB.Voyager',
        group = "Simple Street Map",
        options = providerTileOptions(noWrap = TRUE)
    ) |>
    addCircleMarkers(data = geo_buildings, radius = 1, opacity = 1)
