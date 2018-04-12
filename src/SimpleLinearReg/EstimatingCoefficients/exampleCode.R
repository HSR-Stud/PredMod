advertising <- read.csv("../Data/Advertising.csv")
model <- lm(sales ~ TV, data=advertising)
summary(model)