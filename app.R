library(shiny)
library(bslib)
library(dplyr)
library(leaflet)
library(sf)
library(purrr)

buildings <- read.csv("C:/Projects/citz-rebs-shiny-leaflet/data/buildings.csv")

geo_buildings <- buildings |>
  select(Identifier, Lat, Lon) |>
  filter(!is.na(Lat) & !is.na(Lon)) |>
  st_as_sf(coords = c("Lon", "Lat"), crs = 4326)

source_files <- list.files(here("app/R"), "\\.R$", full.names = TRUE)
# load all the .R
purrr::walk(source_files, source)

shinyApp(
  ui = app_ui,
  server = app_server,
  onStart = NULL,
  uiPattern = "/",
  enableBookmarking = NULL
)
