# Packages.R --------------------------------------------------------------

# The installation will take a while. Do not do this at the last minute.
# Please install all of the following packages prior to the workshop. 

pkgs <- c("devtools", 
          "rstan", 
          "bayesplot", 
          "tidyverse",
          "pksensi")
install.packages(pkgs, dependencies = TRUE)
devtools::install_github("nanhung/simuloR")
