##White noise process
w = ts(rnorm(1000))
plot(w, main="White noise", ylab="value")
grid()

##Moving average process of white noise
window = c(1,1,1)/3;
v = filter(w, sides=2, window)
plot(v,main="MA process", ylab="")

##Autoregressive process of white noise
##filter function can the parameter method set to recursive to compute the autoregressive model
ar = filter(w, filter = c(1.5,-0.9), method="recursive")
plot(ar, main="AR(2) process", ylab="")
grid()