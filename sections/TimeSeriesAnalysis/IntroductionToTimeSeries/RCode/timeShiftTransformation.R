AP = AirPassengers
AP.back = lag(AP, k = 4)
AP.ahead = lag(AP, k = -5)