#In terminal: chmod +x install.sh; source ./install.sh
#.rs.restartR() # Restarting R session...
#setwd("/cloud/project")
#remove.packages("simuloR")

# Packages --------------------------------------------------------------

# The installation will take a while. Do not do this at the last minute.
# Please install all of the following packages prior to the workshop. 

pkgs <- c("devtools",
          "httk",
          "bayesplot", 
          "tidyverse",
          "rstan")
install.packages(pkgs)
devtools::install_github("nanhung/simuloR")
devtools::install_github("nanhung/pksensi")

# Testing --------------------------------------------------------------

library(simuloR)

model <- "models/linear.model"
input <- "inputs/linear.in"
mcsim(model, input)

out <- read.delim("sim.out", skip = 2)
plot(x = out$Time, y = out$y)
abline(a = 1, b = 2)

# Monte Carlo
input <- "inputs/linear.mtc.in"
mcsim(model, input)

# MCMC
input <- "inputs/linear.mcmc.in"
mcsim(model, input)

# Setpoints
input <- "inputs/linear.setpts.in"
mcsim(model, input)
