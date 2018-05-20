##moving average can be done by filter function
##weights = c(0.5, rep(1,11), 0.5)/12 shows that for an even p=12 a window with length p+1 (odd) is constructed but counts the end points only by one half
##figure decomposition of additive time series (trend)
weights = c(0.5, rep(1,11), 0.5)/12
est.trend <- filter(AirPassengers, filter = weights, sides = 2)
plot(est.trend, lwd=2, ylim=c(100, 700))
lines(AirPassengers, col = "darkcyan")
legend("topleft", legend = c("data", "trend"), lty=1,
col = c("darkcyan", "black"))
grid()

##estimate seasonal effects
##figure decomposition of additive time series (seasonal)
est.season = AirPassengers - est.trend
cyc = factor(cycle(AirPassengers))
est.season.month = tapply(est.season, cyc, mean, na.rm=T)
est.season = est.season.month[cyc]
plot(est.season, type="l")
abline(h=0)

##remainder
est.rem = AirPassengers - est.trend - est.season
plot(as.vector(est.rem), type="l", ylab = "rem") #needs fix

##figure decomposition of additive time series (random)
##logarithm (amounts to multiplicative model)
log.data = log(AirPassengers)
#trend estimation of log data
est.trend.log <- filter(log.data, filter = weights, sides = 2)
# seasonality estimation for log data
est.season.log = log.data - est.trend.log
est.season.month = tapply(est.season.log, cyc, mean, na.rm=T)
est.season.log = est.season.month[cyc]
# remainder term estimation for log data
est.rem.log = log.data - est.trend.log - est.season.log
plot(as.vector(est.rem.log), type="l", ylab = "rem") #needs fix

## all in one with decompose function
##figure decomposition of additive time series
decomposed.data = decompose(log(AirPassengers))
plot(decomposed.data)