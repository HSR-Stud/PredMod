B = 1000
hat_s_boot = rep(0, 1, B)

for (i in 1:B)
{
	resampled_data = ex_data[sample(1:2000, replace = TRUE, size = 2000),]
	hat_s_boot[i] = cov(resampled_data)[1,2]
}

par(mfrow = c(1,2))

hist(hat_s, nclass = 50, col = "darkred", ylim = c(0,80), xlab = "Estimators from simulated data", main = "")
rug(hat_s)
hist(hat_s_boot, nclass = 50, col = "darkcyan", ylim = c(0,80), xlab = "Estimators from bootstrapped data", main ="")
rug(hat_s_boot)