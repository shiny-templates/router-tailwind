# Shiny Templates

[*Try it out!*](https://router-tailwind.shiny-templates.dev)

[shiny.router](https://appsilon.github.io/shiny.router) and [shiny.tailwind](https://github.com/kylebutts/shiny.tailwind)

A basic setup with an organized router, as well as using [Tailwind v3]() in favor of bootstrap.

```R
install.packages(c("shiny", "shiny.router", "vroom", "dplyr", "ggplot2", "forcats"))
```

Read data:
```R
library(vroom)

# global.R is ran when shiny starts, therefore we load the data there, but ideally
# for big applications you'd load the data when needed.
injuries   <- vroom("src/routes/neiss/data/injuries.tsv.gz", delim = "\t")
products   <- vroom("src/routes/neiss/data/products.tsv", delim = "\t")
population <- vroom("src/routes/neiss/data/population.tsv", delim = "\t")
```
Then run the shiny app by `Control + Shift + Enter`

# DISCLAIMER
Native Shiny components (tabsetPanel() for example) still use bootstrap and won't react to tailwind.

Use raw html tags (div, a, tags$footer, etc) where you want tailwind.
