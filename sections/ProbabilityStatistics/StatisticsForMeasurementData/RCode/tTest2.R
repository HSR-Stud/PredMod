x <- c(79.98, 80.04, 80.02, 80.04, 80.03,
80.03, 80.04, 79.97, 80.05, 80.03,
80.02, 80.00, 80.02)

t.test(x, alternative = "two.sided",
mu = 80.00, conf.level = 0.95)

##
## One Sample t-test
##
## data:  x
## t = 3.1246, df = 12, p-value = 0.008779
## alternative hypothesis: true mean is not equal to 80
## 95 percent confidence interval:
## 80.00629 80.03525
## sample estimates:
## mean of x 
## 80.02077 