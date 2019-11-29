#.rs.restartR() # Restarting R session...
#remove.packages("simuloR")
#devtools::install_github("nanhung/simuloR")
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
