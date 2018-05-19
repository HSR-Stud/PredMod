##Example beer vs electricity (Australia)

## First load the electricity data from file and create a time series out of it.
X.elec = read.table("../Daten/AustralianElectricity.csv", sep=";",
header = T)
X.elec.ts = ts(X.elec[,2], start = c(1956,1), end = c(1994, 2),
frequency

##Bind the two separate series together by means of the cbind command and plot the series
X.ts = cbind(X.beer.ts, X.elec.ts)
plot(X.ts, main="Beer and electricity production in Australia")
grid()

##aggregate the monthly data of the AirPassengers data to quarterly data
##aggregate sums the data set to the desired frequency up
AP.quarter = aggregate(AirPassengers, nfrequency = 4)

#Extract common time points and combine the corresponding data values to a new, bivariate time series
AP.elec = ts.intersect(AP.quarter, X.elec.ts)
plot(AP.elec, main="Air Passenger bookings and electricity production")
grid()