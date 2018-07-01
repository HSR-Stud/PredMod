Advertising <- read.csv("../Daten/Advertising.csv") 

## First test, using anova()
anova(lm(sales ~ TV + radio, data=Advertising), lm(sales ~ TV + radio + newspaper, data=Advertising))

## Second test, using anova()
anova(lm(sales ~ radio + newspaper, data=Advertising), lm(sales ~ TV + radio + newspaper, data=Advertising))
 
 # Third test, using drop1()
 drop1(lm(sales ~ TV + radio + newspaper, data=Advertising), test="F")