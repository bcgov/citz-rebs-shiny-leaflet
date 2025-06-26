# UI function for info module
infoUI <- function(id) {
  ns <- NS(id)

  tagList(
    h3("Information"),
    p("Your information content will go here."),
    # Add your info content here
  )
}

# Server function for info module
infoServer <- function(id) {
  moduleServer(id, function(input, output, session) {
    # Your info server logic here
  })
}
