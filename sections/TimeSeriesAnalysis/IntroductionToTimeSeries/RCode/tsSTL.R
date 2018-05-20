#State of the art method for decomposing time series.
stl.fit = stl(log(AirPassengers), s.window = 10)
plot(stl.fit)

##Plots the cyle-subseries in a common plot
monthplot(stl.fit)