app_server <- function(input, output, session) {
  mapsServer("maps_module")
  infoServer("info_module")
}
