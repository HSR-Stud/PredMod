require(tree)
#default controls
tc = tree.control(nobs = 303, mincut = 5, minsize = 10, mindev = 0.01)

#grow tree
tree.model = tree(AHD~MaxHR+Age, data = heart, control = tc)

#plot tree and label splits
plot(tree.model)
text(tree.model, cex=0.8)

#plot partition (only for two predictor case)
partition.tree(tree.model)
points(Age~MaxHR, data = heart, col = cols[label], pch=20)