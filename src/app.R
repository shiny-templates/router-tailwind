library(shiny)
library(shiny.router)
library(shiny.tailwind)

options(shiny.port = 6969)

source_folder <- function(folder) {
  files <- list.files(folder, recursive = TRUE, full.names = TRUE, pattern = "\\.R$")
  for (f in files) source(f)
}

source_folder("components")
source_folder("routes/home")
source_folder("routes/neiss")
source_folder("routes/other-page")

addResourcePath("assets", "assets")

ui <- fluidPage(
  use_tailwind(),
  includeCSS("assets/main.css"),
  
  div(
    class = "min-h-screen flex flex-col",
    header_ui(),
    
    tags$main(class = "flex-grow",
              #  Router UI registration
              router_ui(
                route("/", home_ui()),
                route("neiss", neiss_ui()),
                route("other-page", h1("Other Page"))
              )
    ),
    
    footer_ui()
  )
)

server <- function(input, output, session) {
  
  # Router Server registration
  router_server(root_page = "/")
  
  observe({
    if (get_page() == "neiss") {
       neiss_server(input, output)
      
      # See shiny.router docs/source for get_query_param() to use example.com/#!/?query-param=example
    } else if (get_page() == "other-page") {
      #other_page_server(input, output) (If there was one)
    }
  })
}

shinyApp(ui, server)