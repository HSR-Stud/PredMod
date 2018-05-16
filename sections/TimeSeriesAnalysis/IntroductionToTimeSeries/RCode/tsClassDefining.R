X.beer = read.table("../Daten/AustralianBeer.csv", sep=";", header = T)

X.beer.ts = ts(X.beer[,2], start = c(1956,1), end = c(1994, 2),frequency = 4)
summary(X.beer.ts)
## Min. 1st Qu.	Median	Mean	3rd	Qu. Max.
## 213 	325 	427 	408 	467		600

#Figure Subset of Time Series
plot(X.beer.ts, ylab="Beer [Ml]", main="Beer production in Australia")
X.ts.w = window(X.beer.ts, start = c(1980,3), end = c(1990, 1))
summary(X.ts.w)
## Min. 1st Qu. Median 	Mean   3rd Qu. Max.
## 405 	437 	467 	478    530     598
lines(X.ts.w, col = "darkred", lwd=2)
grid()