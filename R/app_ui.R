app_ui <- function(request) {
  tagList(
    tags$head(
      # tags$link(rel = "stylesheet", type = "text/css", href = "stylesheet.css")
      tags$style(HTML(
        "
      .body {
        margin: 0px;
        }
      .header-band {
        background-color: #224075;
        color: white;
        padding: 15px;
        margin-bottom: 0px;
        text-align: left;
      }
      .header-subtitle {
        margin: 0;
        font-size: clamp(12px, 2.5vw, 16px);  /* min, preferred, max */
        font-style: italic;
        font-weight: normal;
      }
      .header-title {
        margin: 5px 0 0 0;
        font-weight: bold;
        font-size: clamp(20px, 4vw, 32px);  /* min, preferred, max */
      }
    "
      ))
    ),

    # Blue header band
    tags$div(
      class = "header-band",
      tags$p("Real Estate Business Services", class = "header-subtitle"),
      tags$h2("Leaflet Dashboard", class = "header-title")
    ),

    fluidPage(
      class = "main-content",

      # Tabset
      tabsetPanel(
        id = "main_tabs",
        type = "tabs",
        tabPanel("Maps", mapsUI("maps_module")),
        tabPanel("Info", infoUI("info_module"))
      )
    )
    # Leave this function for adding external resources
    # golem_add_external_resources(),
    # Your application UI logic
    # page_fluid(
    #   leafletOutput("map")
    # )
  )
}

# ui <- page_fillable(
#   theme = bs_theme(version = 5),

#   # Header banner
#   div(
#     class = "bg-primary text-white p-3 mb-3",
#     h1("Dashboard Title", class = "mb-0"),
#     p("Subtitle or description", class = "mb-0 opacity-75")
#   ),

#   # Main content
#   navset_card_tab(
#     nav_panel("Tab 1", "Content"),
#     nav_panel("Tab 2", "More content")
#   )
# )

# /* Custom tab styling */
#       .nav-tabs {
#         border-top: 2px solid white;  /* White line separating from header */
#         border-bottom: none;
#         background-color: #224075;
#         margin-bottom: 0px;
#       }

#       .nav-tabs .nav-link {
#         background-color: #224075;
#         color: white;
#         border: none;
#         border-radius: 0;
#         padding: 12px 20px;
#         font-weight: 500;
#       }

#       .nav-tabs .nav-link:hover {
#         background-color: #1a3058;  /* Slightly darker on hover */
#         color: white;
#         border: none;
#       }

#       .nav-tabs .nav-link.active {
#         background-color: #2a4a85;  /* Lighter shade for active tab */
#         color: white;
#         border: none;
#         border-bottom: 3px solid white;  /* White bottom border for active tab */
#       }

#       .tab-content {
#         padding: 20px;
#         background-color: white;
#       }
