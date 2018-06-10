## ==========================
## First test, using anova()
## ==========================

## Analysis of Variance Table
##
## Model 1: sales ~ TV + radio
## Model 2: sales ~ TV + radio + newspaper
##   Res.Df    RSS  Df  Sum of Sq      F  Pr(>F)
## 1   197  556.91
## 2   196  556.83  1   0.088717  0.0312 0.8599

## ==========================
## Second test, using anova()
## ==========================

## Analysis of Variance Table
##
## Model 1: sales ~ radio + newspaper
## Model 2: sales ~ TV + radio + newspaper
##   Res.Df    RSS   Df Sum of Sq       F      Pr(>F)
## 1  197   3614.8 
## 2  196    556.8   1       3058  1076.4   < 2.2e-16 ***
## ---
## Signif. codes:
## 0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

## ==========================
## Third test, using drop1()
## ==========================

## Single term deletions
##
## Model:
## sales ~ TV + radio + newspaper
##          Df Sum of Sq     RSS     AIC    F value    Pr(>F)
## <none>        556.8    212.79
## TV        1  3058.01  3614.8   584.90  1076.4058   <2e-16
## radio     1  1361.74  1918.6   458.20   479.3252   <2e-16
## newspaper 1     0.09   556.9   210.82     0.0312   0.8599
##
## <none>