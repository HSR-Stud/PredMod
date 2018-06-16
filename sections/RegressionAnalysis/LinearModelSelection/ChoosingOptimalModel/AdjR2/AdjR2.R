library(leaps)
Credit <- read.csv("../Daten/Credit.csv")
Credit <- Credit[,-1]

reg <- regsubsets(Balance ~ . , data=Credit, method="forward", nvmax=11)
reg.sum <- summary(reg)

round(reg.sum$adjr2,5)
## [1] 0.74521 0.87449 0.94950 0.95170 0.95358 0.95400
## [7] 0.95401 0.95396 0.95392 0.95389 0.95383

which.max(reg.sum$adjr2)
## [1] 7