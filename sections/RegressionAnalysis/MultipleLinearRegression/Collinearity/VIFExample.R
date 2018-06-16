library(car)

Credit <- read.csv("../Daten/Credit.csv")
vif(lm(Balance ~ Age + Rating + Limit, data=Credit))

## Age Rating Limit
## 1.011385 160.668301 160.592880

summary(lm(Balance ~ Age + Rating + Limit, data=Credit))$r.squared

## [1] 0.7536015