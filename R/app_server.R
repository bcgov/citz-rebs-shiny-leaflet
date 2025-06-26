app_server <- function(input, output, session) {
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
