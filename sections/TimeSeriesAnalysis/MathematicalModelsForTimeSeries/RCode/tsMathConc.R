##Random Walk (Figure Random walk process)
##The function cumsum() computes the cumulated sum of a given vector.
d = sample(c(-1,1), replace = T, size = 10000)
x = ts(cumsum(d))
plot(x, main="Random Walk", ylab="y-deviation in [m]")
grid()

##Random Walk with drift (Figure Random walk with drift (black)
set.seed(12); d = sample(c(-1,1), replace = T, size = 10000)
delta = 5e-2
y = rep(0,1,10000)
for (i in 2:10000){
y[i] = delta + y[i-1] + d[i]
}
plot(ts(y), main="Random Walk with drift", ylab="y-deviation in [m]")
lines(cumsum(d), col="darkcyan")
grid()

