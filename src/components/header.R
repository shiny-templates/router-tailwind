header_ui <- function() {
  div(
    class = "flex text-3xl font-semibold px-4 py-2 gap-16 border-b-2 mb-8",
    a(href = route_link("/"), "Example Web", class = "text-6xl font-bold"),
    div(
      class = "flex mt-auto gap-8",
      a(href = route_link("neiss"), "Neiss"),
      a(href = route_link("other-page"), "Other Page")
    )
  )
}