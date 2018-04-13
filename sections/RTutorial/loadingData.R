# loading csv files
data <- read.table("whatever.csv", sep="", header=T)

# csv files can be stored with (almost) any kind of file ending, e.g.:
data <- read.table("whatever.dat", sep="", header=T)
data <- read.table("whatever.txt", sep="", header=T)

