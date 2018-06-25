cm <- table(predClass, trueClass)
cm <- addmargins(cm) # calculates and adds sum of the rows and columns