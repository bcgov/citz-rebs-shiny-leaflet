app_ui <- function(request) {
  tagList(
    tags$head(
      # tags$link(rel = "stylesheet", type = "text/css", href = "stylesheet.css")
    ),
    # Leave this function for adding external resources
    # golem_add_external_resources(),
    # Your application UI logic
    page_fluid(
      leafletOutput("map")
    )
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
