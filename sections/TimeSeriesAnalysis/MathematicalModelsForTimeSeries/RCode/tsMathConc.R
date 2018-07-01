##Random Walk process
##The function cumsum() computes the 
d = sample(c(-1,1), replace = T, size = 10000)
x = ts(cumsum(d)) # compute cumulated sum
plot(x, main="Random Walk", ylab="y-deviation in [m]")