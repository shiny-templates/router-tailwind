home_ui <- function() {
  fluidPage(
    # Using Tailwind, always with class = "". Can't be used in certain shiny components.
    class = "text-center",
    h1(
      "Example Web",
      class = "text-5xl font-bold underline mb-6"
    ),
    p(
      "A basic template using ",
      a(href="https://appsilon.github.io/shiny.router", "shiny.router", class = "text-blue-500"),
      " and ",
      a(href="https://github.com/kylebutts/shiny.tailwind", "shiny.tailwind", class = "text-blue-500")
    ),
    # Using CSS, always with a style = "".
    div(style = "height: 8px;"),
    p(
      "It also uses ",
      a(href="https://github.com/hadley/mastering-shiny/blob/main/neiss", "Hadley's NEISS code and data", class = "text-blue-500"),
      " for the example ui and server."
    )
  )
}