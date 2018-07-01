# predict the class probabilites for the training data
pred.prob <- predict(glm.fit, type = "response")

# predict class by thresholding
pred.class <- as.integer(pred.prob > 0.5)

# compute classification error
true.class <- as.integer(Default$default=="Yes")
err.train <- mean(abs(pred.class-true.class))

cm <- table(predClass, trueClass)
cm <- addmargins(cm) # calculates and adds sum of the rows and columns