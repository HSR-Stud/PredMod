require(tree)
# deviance or cross entropy
tree.model = tree(AHD~MaxHR+Age, data = heart, split = "deviance")
plot(tree.model)
text(tree.model, cex=0.8)
partition.tree(tree.model)
points(Age~MaxHR, data = heart, col = cols[label], pch=20)

# Gini index
tc = tree.control(303, mincut = 5, minsize = 60, mindev = 0.01)
tree.model = tree(AHD~MaxHR+Age, data = heart, split = "gini", control = tc)
plot(tree.model)
text(tree.model, cex=0.8)
partition.tree(tree.model)
points(Age~MaxHR, data = heart, col = cols[label], pch=20)