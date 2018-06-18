d <- read.csv("Heart.csv", sep=",", header=TRUE)
mod <- glm(AHD ~ Age + Sex + Chol, family=binomial, data=d)

print(summary(mod))

##                 Estimate  Std. Error   z value     Pr(>|z|)
## (Intercept) -5.909350499 1.095393466 -5.394729 6.862719e-08
## Age          0.062245916 0.015119960  4.116804 3.841620e-05
## Sex          1.631813622 0.303193862  5.382080 7.363002e-08
## Chol         0.004829336 0.002539255  1.901871 5.718799e-02