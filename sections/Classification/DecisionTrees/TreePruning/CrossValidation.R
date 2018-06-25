# The following code computes a large tree and performs cost-complexity pruning where the parameter alpha is chosen by 10-fold cross-validation.

require(tree)
#tree controls for large tree
tc = tree.control(nobs = 303, mincut = 1,
minsize = 2, mindev = 1e-10)

#grow large tree
tree.model = tree(AHD~., data = heart, control = tc, model=T)

#k-fold cross-validation (K=10)
tree.cv = cv.tree(tree.model, FUN = prune.tree, method = "misclass", K = 10)

# find alpha at optimal std dev
opt.alpha = tree.cv$k[which.min(tree.cv$dev)]
# find size at optimal std dev
opt.size = tree.cv$size[which.min(tree.cv$dev)]

# find best tree
opt.tree = prune.tree(tree.model,method = "misclass", k = opt.alpha)
# OR
opt.tree = prune.tree(tree.model,method = "misclass", best = opt.size)

summary(opt.tree)

##
## Classification tree:
## snip.tree(tree = tree.model, nodes = c(49L, 25L, 4L, 11L, 48L,
## 7L, 10L, 13L))
## Variables actually used in tree construction:
## [1] "Thal" "Ca" "ChestPain" "ExAng"
## [5] "Age"
## Number of terminal nodes: 8
## Residual mean deviance: 0.779 = 225 / 289
## Misclassification error rate: 0.131 = 39 / 297