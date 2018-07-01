##moving average can be done by filter function
##weights = c(0.5, rep(1,11), 0.5)/12 shows that for an even p=12 a window with length p+1 (odd) is constructed but counts the end points only by one half
##figure decomposition of additive time series (trend)
weights = c(0.5, rep(1,11), 0.5)/12
est.trend <- filter(AirPassengers, filter = weights, sides = 2)