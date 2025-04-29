# https://github.com/hadley/mastering-shiny/blob/main/neiss

neiss_ui <- function() {
  fluidPage(
    h1(
      "National Electronic Injury Surveillance System (2017)",
      class = "text-4xl font-bold underline"
    ),
    #<< first-row
    fluidRow(
      column(8,
             selectInput("code", "Product",
                         choices = setNames(products$prod_code, products$title),
                         width = "100%"
             )
      ),
      column(2, selectInput("y", "Y axis", c("rate", "count")))
    ),
    #>>
    fluidRow(
      column(4, tableOutput("diag")),
      column(4, tableOutput("body_part")),
      column(4, tableOutput("location"))
    ),
    fluidRow(
      column(12, plotOutput("age_sex"))
    ),
    #<< narrative-ui
    fluidRow(
      class = "gap-2 mb-12",
      actionButton("story", "Tell me a story"),
      textOutput("narrative")
    )
    #>>
  )
}