class(AirPassengers)
## [1] "ts"

start(AirPassengers); end(AirPassengers); frequency(AirPassengers)
## [1] 1949 1
## [1] 1960 12
## [1] 12

#1/frequency = 1/12 = 0.0833
deltat(AirPassengers)
## [1] 0.0833

#output in figure AirPassengers.
plot(AirPassengers, main = "Passengers", ylab="Number (in 1000s)")
grid()
