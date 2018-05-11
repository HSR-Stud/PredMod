x <- c(24.4, 27.6, 27.8, 27.9, 28.5, 30.1, 30.3, 31.7, 32.2, 32.8, 33.3, 33.5, 34.1, 34.6, 35.8, 35.9, 36.8, 37.1, 39.2, 39.7)

alpha_k <- (seq(1, length(x), by=1)-0.5)/length(x)

quantile_th <- qnorm(alpha_k, mean=mean(x), sd=sd(x))

quantile_emp <- sort(x)
#image qqplot
qqplot(quantile_th, quantile_emp, xlab="Theoretische Quantile", ylab = "Empirische Quantile")
#image qqnorm;qqline
qqnorm(x);qqline(x)
 
 