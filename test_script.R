#install.packages("devtools")
#devtools::install_github("nanhung/simuloR")
library(simuloR)
simuloR::mcsim_download()

file <- "models/perc.model"
makemcsim(file)
