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
mcsim(model, input, compile = F)

# MCMC
input <- "inputs/linear.mcmc.in"
mcsim(model, input, compile = F)

# Setpoints
input <- "inputs/linear.setpts.in"
mcsim(model, input, compile = F)

file.remove(c("sim.out", "simmc.out", "MCMC.check.out", "MCMC.default.out", "MCMC.default.out.kernel"))
