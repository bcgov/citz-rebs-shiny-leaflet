# UI function for maps module
mapsUI <- function(id) {
  ns <- NS(id)

  tagList(
    h3("Maps Content"),
    p("Your leaflet map and related content will go here."),
    # Add your leaflet output here
    # leafletOutput(ns("map"))
    leafletOutput(ns("map"))
  )
}

# Server function for maps module
mapsServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Your maps server logic here
    # output$map <- renderLeaflet({
    #   # Your leaflet code
    # })
    output$map <- renderLeaflet({
      leaflet() |>
        addProviderTiles(
          'CartoDB.Voyager',
          group = "Simple Street Map",
          options = providerTileOptions(noWrap = TRUE)
        ) |>
        addCircleMarkers(data = geo_buildings, radius = 1, opacity = 1)
    })
  })
}
