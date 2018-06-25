# reading data and loading strings as factors automatically
data <- read.csv(file = 'data/whatever.csv', stringsAsFactors = TRUE)

# transforming into factor variable
fac <- factor(nonNumeric, levels=c("level1", "level2"))

# getting information about factor variable
print(str(fac))
print(levels(fac))

# predicting factor variables (classification)
predict(model, newdata, type="class")
