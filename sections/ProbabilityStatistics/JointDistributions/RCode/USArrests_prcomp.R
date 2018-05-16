#First principal component
pr.out <- prcomp(USArrests[,c("Murder","Assault")])
pr.out$rotation[,1]

## Murder 		Assault
## -0.0419126 	-0.9991213

#principal component scores (z_i1 to z_in)
pr.out <- prcomp(USArrests[,c("Murder","Assault")])
head(pr.out$x)

## 				PC1(z_i1) 	PC2(z_i2)
## Alabama 		-65.40950 	2.6728663
## Alaska 		-92.25166	-1.6559620
## Arizona 		-123.14478 	-4.8535831
## Arkansas 	-19.26551 	0.2047123
## California 	-105.19832 	-3.1999471
## Colorado 	-33.21549 	-1.2812733

#Second principal component
pr.out <- prcomp(USArrests[,c("Murder","Assault")])
pr.out$rotation[,2]

## Murder 		Assault
## 0.9991213 	-0.0419126