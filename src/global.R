library(vroom)

# global.R is ran when shiny starts, therefore we load the data there, but ideally
# for big applications you'd load the data when needed.
injuries   <- vroom("src/routes/neiss/data/injuries.tsv.gz", delim = "\t")
products   <- vroom("src/routes/neiss/data/products.tsv", delim = "\t")
population <- vroom("src/routes/neiss/data/population.tsv", delim = "\t")
