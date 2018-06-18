# Read data
Auto  <- read.table("Auto.csv", sep=",", header=T)

# get size of DATA FRAME or MATRIX
numRows <- nrow(Auto)
numCols <- ncol(Auto)
dimensions <- dim(Auto)

# arrays
a <- c(1, 2, 3, 4, 5)
l <- length(a)