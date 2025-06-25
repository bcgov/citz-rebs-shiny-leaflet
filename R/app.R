library(shiny)
library(dplyr)
library(leaflet)
library(sf)


buildings <- read.csv("C:/Projects/citz-rebs-shiny-leaflet/data/buildings.csv")

geo_buildings <- buildings |>
  select(Identifier, Lat, Lon) |>
  filter(!is.na(Lat) & !is.na(Lon)) |>
  st_as_sf(coords = c("Lon", "Lat"), crs = 4326)

ui <- fluidPage(
  leafletOutput("map")
)
server <- function(input, output, session) {
  output$map <- renderLeaflet({
    leaflet() |>
      addProviderTiles(
        'CartoDB.Voyager',
        group = "Simple Street Map",
        options = providerTileOptions(noWrap = TRUE)
      ) |>
      addCircleMarkers(data = geo_buildings, radius = 1, opacity = 1)
  })
}
shinyApp(ui, server)
