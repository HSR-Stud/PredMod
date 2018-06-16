par(mfrow=c(1,2))
Advertising <- read.csv("../Daten/Advertising.csv")

plot(lm(sales ~ TV + radio + radio*TV, data=Advertising), which=5, col="darkgrey")

#radio.R <- Advertising[-c(131,156),3]
#TV.R <- Advertising[-c(131,156),2]
#sales.R <- Advertising[-c(131,156),5]

plot(lm(sales ~ TV + radio + TV*radio, subset=-c(131,156), data=Advertising), which=5, col="darkgrey")