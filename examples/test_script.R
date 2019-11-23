#.rs.restartR() # Restarting R session...
#remove.packages("simuloR")
#devtools::install_github("nanhung/simuloR")
library(simuloR)

model <- "models/simple.model"
input <- "inputs/simple.in"
mcsim(model, input)
