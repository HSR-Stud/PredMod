# read data
forbes <- read.table("Forbes.dat", header=T)
forbes$x <- 100*log(forbes$pressure)

# plot it
plot(y ~ x, data=forbes)

# fit model
fitX <- lm(y~x, data=forbes)

# predict output for new data
newData = data.frame(x=seq(300, 350, length=17))
pred <- predict(fitX, newData)

# add predicted data to plot
lines(newData$x, pred, col="blue")

# get summary 
s <- summary(fitX)

# extract coefficients and their statistics
c <- s$coefficients

print(s)

print("t-values:")
print(c[,"t value"])

print("p-values:")
print(c[,"Pr(>|t|)"])