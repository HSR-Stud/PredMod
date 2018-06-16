library(MASS)
Credit <- read.csv("../Daten/Credit.csv")
Credit <- Credit[,-1]

f.full <- lm(Balance ~ Income + Limit + Rating + Cards + Age + Education + Gender + Student + Married + Ethnicity, data=Credit)
f.empty <- lm(Balance~NULL, data=Credit)

step(f.empty, direction="forward", scope=list(lower=f.empty, upper=f.full), trace=0, k=log(nrow(Credit)))

##
## Call:
## lm(formula = Balance ~ Rating + Income + Student + Limit + Cards, data = Credit)
##
## Coefficients:
## (Intercept) Rating Income StudentYes
## -526.1555 1.0879 -7.8749 426.8501
## Limit Cards
## 0.1944 17.8517
