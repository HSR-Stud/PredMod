idx.test <- sample(1:length(Auto[,1]), size = round(length(Auto[,1])/5), replace = FALSE)

testSet <- Auto[idx.test,]
trainingSet <- Auto[-idx.test,]