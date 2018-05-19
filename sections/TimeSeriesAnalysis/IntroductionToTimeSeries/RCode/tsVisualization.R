:##Figure Air Temperature measurement: 9512 points
AirData = read.table("../Daten/AirQualityUCI/AirQualityUCI.csv",
sep=";", header=T,dec = ",")
AirTmp.ts = ts(AirData[,c(13)], start = c(1,18), frequency = 24)
end(AirTmp.ts)
## [1] 396 8

plot(AirTmp.ts, main = "Air Temperature measurement: full data set",
ylab="Temperature [C]", xlab="Time [d]", ylim = c(0,50))
grid()

##Figure Air Temperature measurement: 480 points
AirTmpWin.ts = window(AirTmp.ts, start = c(1, 18), end=c(20, 18))
plot(AirTmpWin.ts, main = "Air Temperature measurement: detail",
ylab="Temperature [C]", xlab="Time [d]", ylim = c(0,50))
grid()

##Figure Air temperature: Boxplot
 cycle(AirTmp.ts)[1]; cycle(AirTmp.ts)[875]
## [1] 18
## [1] 4

boxplot(AirTmpWin.ts ~ cycle(AirTmpWin.ts),
col = "darkcyan", main = "Air temperature")
grid()

##Figure lag.plot
lag.plot(AirTmpWin.ts, pch=20, main = "")
lag.plot(AirTmpWin.ts, pch=20, main = "", set.lags = 10)