Advertising <- read.csv("../Daten/Advertising.csv")
fit <-lm(sales ~ TV, data=Advertising)
plot(fit, col="darkgrey", which=3)

for (i in 1:100)
{
  sresid <- sqrt(abs(sample(rstandard(fit), replace=TRUE)))
  lines(loess.smooth(fitted(fit),sresid), col="lightgrey",lwd=1)
}

par(new=T)
plot(fit, col="darkgrey", which=3)