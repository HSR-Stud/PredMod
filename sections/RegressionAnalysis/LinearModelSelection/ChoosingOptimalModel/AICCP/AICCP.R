library(MASS)
Credit <- read.csv("../Daten/Credit.csv")
Credit <- Credit[,-1]

f.full <- lm(Balance ~ Income + Limit + Rating + Cards + Age + Education + Gender + Student + Married + Ethnicity, data=Credit)
f.empty <- lm(Balance ~ NULL, data=Credit)

step(f.empty, direction="forward", scope=list(lower=f.empty, upper=f.full))

## Start: AIC=4905.56
## Balance ~ NULL
##
## Df Sum of Sq RSS AIC
## + Rating 1 62904790 21435122 4359.6
## + Limit 1 62624255 21715657 4364.8
## + Income 1 18131167 66208745 4810.7
## + Student 1 5658372 78681540 4879.8
## + Cards 1 630416 83709496 4904.6
## <none> 84339912 4905.6
## + Gender 1 38892 84301020 4907.4
## + Education 1 5481 84334431 4907.5
## + Married 1 2715 84337197 4907.5
## + Age 1 284 84339628 4907.6
## + Ethnicity 2 18454 84321458 4909.5
##
##  ...blablablabla...
##
## Step: AIC=3679.89
## Balance ~ Rating + Income + Student + Limit + Cards + Age
##
## Df Sum of Sq RSS AIC
## <none> 3821620 3679.9
## + Gender 1 10860.9 3810759 3680.7
## + Married 1 5450.6 3816169 3681.3
## + Education 1 5241.7 3816378 3681.3
## + Ethnicity 2 11517.3 3810102 3682.7
##
## Call:
## lm(formula = Balance ~ Rating + Income + Student + Limit + Cards + Age, data = Credit)
##
## Coefficients:
## (Intercept) Rating Income StudentYes
## -493.7342 1.0912 -7.7951 425.6099
## Limit Cards Age
## 0.1937 18.2119 -0.6241
