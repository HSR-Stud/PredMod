importance(rf.model)

##     		MeanDecreaseGini
## Age 			12.47
## Sex 			4.33
## ChestPain 	20.25
## RestBP 		10.10
## Chol 		12.15
## Fbs 			1.32
## RestECG 		2.78
## MaxHR 		17.13
## ExAng 		6.67
## Oldpeak 		15.90
## Slope 		5.92
## Ca 			17.84
## Thal 		19.87


## create a plot with x-axis "MeanDecreaseGini" and y-axis containing the predictor names
varImpPlot(rf.model, main="Variable importance of random forest model")