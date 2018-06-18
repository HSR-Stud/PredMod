require(boot)

# classification error
costFun <- function(trueClass, estProb) 
{
	err <- mean(((estProb < 0.5) & (trueClass == 1))
				| ((estProb > 0.5) & (trueClass == 0)))
	return(err)
}

# cross validated error
error <- cv.glm(glmfit=model, data=training, cost=costFun, K=5)