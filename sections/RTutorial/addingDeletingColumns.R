# Read data
Auto  <- read.table("Auto.csv", sep=",", header=T)

# Add column which is true if Auto$mpg is greater than its median
med <- median(Auto$mpg)
Auto$mpgGreaterThanMed <- Auto$mpg > med

# Get column by name
colToDrop <- names(Auto) %in% c("mpg")

# Assign all columns except mpg to a new frame
autoFrm <- Auto[!colToDrop]