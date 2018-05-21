##Computing the estimators for simulated data. First we simulate a realization of a moving average
# create white noise
set.seed(123)
w = rnorm(1000, mean = 2, sd = 0.1)
# filter and define time series
# rep(1,3) = [1,1,1]
MA = ts(filter(w, filter = rep(1,3)/3, sides = 2))
##In the filter command, missing values NA at the boundaries are generated. The function na.omit omits these cases where NAs are involved
MA= na.omit(MA)

##The autocovariance and -correlation can be computed with the acf function. The tyoe parameter chooses either correlation (default) or covariance. lag.max gives the maxiamal lag upto which the autocovariance is computed.
##Figure: sample autocorrelation
ac = acf(MA, type="covariance", lag.max = 50, ylim=c(0,0.004))
# theoretical autocovariance
sigma = 0.1
cv.true = rep(0, 1, length(ac$acf))
cv.true[1] = 3*sigma^2/9;
cv.true[2] = 2*sigma^2/9;
cv.true[3] = sigma^2/9;
points(ac$lag+0.3, cv.true, pch=18, col="darkred", type="h")
legend("topright", legend=c("estimated", "theoretical"),
lty=1, col = c("black", "darkred"))

##computing the correlogram Figure: sample autocorrelation
acf(MA, lag.max = 50)
## The two-sigma confidence bands are drawn automatically