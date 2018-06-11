par(mfrow=c(1,2))
advertising <- read.csv("../Daten/Advertising.csv")
plot(sales ~ TV, col="darkgrey", data=advertising)
fit <- lm(sales ~ TV, data=advertising)
abline(fit, col="blue")
plot(fitted(fit), resid(fit), col="darkgrey",xlab="Fitted", ylab="Residuals")
abline(h=0,lty="dashed",col="blue")

## Using the plot function directly on the model:
plot(fit, col="darkgrey", which=1)