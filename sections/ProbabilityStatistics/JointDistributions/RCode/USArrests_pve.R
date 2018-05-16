pr.out <- prcomp(USArrests[,c("Murder","Assault")],scale=FALSE)
pr.var <- pr.out$sdev^2
pve <- pr.var/sum(pr.var)
pve


## [1] 0.9990292327 0.0009707673

## Most of the information of the data about the arrests for Murder and Assault is contained in the first principal component.