testIdx <- sample(1:length(Auto[,1]), size = round(length(Auto[,1])/5), replace = FALSE)

testSet <- Auto[testIdx,]
trainingSet <- Auto[-testIdx,]