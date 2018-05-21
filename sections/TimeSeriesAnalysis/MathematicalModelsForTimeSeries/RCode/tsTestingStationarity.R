##Figuer: Remainder AustralianElectricity
AusEl = read.table("../Daten/AustralianElectricity.csv",
sep=";", header=T,dec = ",")
AusEl.ts = ts(AusEl[,2], frequency = 4)
res = stl(log(AusEl.ts), s.window = 16)
# the time series component contains 3 series where the
# third constitutes the remainder sequence
plot(res$time.series[,3], main="Remainder: Australian Electricity")
grid()

##Figure: Remainder AirTemperature
AirData = read.table("../Daten/AirQualityUCI/AirQualityUCI.csv",
sep=";", header=T,dec = ",")
AirTmp.ts = ts(AirData[,c(13)], start = c(1,18), frequency = 24)
AirTmpWin.ts = window(AirTmp.ts, start = c(1, 18), end=c(20, 18))
res = stl(AirTmpWin.ts, s.window = 10)
plot(res$time.series[,3], main="Remainder: Air Temperature")
grid()