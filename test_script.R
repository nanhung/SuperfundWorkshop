#.rs.restartR() # Restarting R session...
#install.packages("devtools")
#remove.packages("simuloR", lib="~/R/x86_64-pc-linux-gnu-library/3.6")
#devtools::install_github("nanhung/simuloR")
library(simuloR)

file <- "models/perc.model"
makemcsim(file)
