# Read and plot data 
windmill <- read.table("windmill.dat", header=T)  
plot(current ~ wind_speed, data=windmill)

# fit model
reg <- lm(current ~ wind_speed, data=windmill)

# add model results to plot
abline(reg)

## Find & print confidence interval
print("99% Confidence interval for the coefficients of model x~wind_speed: ")
print(confint(reg, level=0.99))
  
## "99% Confidence interval for the coefficients of normal model x~wind_speed: "
##                   0.5 %    99.5 %
## (Intercept) -0.22281931 0.4845696
## wind_speed   0.08387868 0.1316816