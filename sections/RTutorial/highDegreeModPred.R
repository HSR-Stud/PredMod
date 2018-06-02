# reading the data
a <- read.table("Anscombe.dat", sep="", header=T)

# Generating the model
reg <- lm(Y2 ~ X2 + I(X2^2), data = a)

# printing information of the model (use [[ ]] to access only the numeric value, without the name)
print(cat("Intercept: ", coefficients(reg)[["(Intercept)"]]))

# plotting input vs output data
plot(a$X2, a$Y2, xlab="X2", ylab="Y2")

# printing the summary
print(summary(reg))

# generating a new input data sequence
newData = data.frame(X2=seq(4, 14, length=11))

# predicting the output
quad <- predict(reg, newData)

# adding the output to the plot
lines(newData$X2, quad)