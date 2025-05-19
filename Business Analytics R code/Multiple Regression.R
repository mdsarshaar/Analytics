# Fit a model to predict mpg from weight and HorsePower 
getwd()
mxdemo<-read.csv("automregr.csv")
str(mxdemo)
library(car)
scatterplotMatrix(mxdemo)

#invistigate the correlation structure
library(corrplot)
corrplot.mixed(cor(mxdemo), upper="circle")

multrgr<-lm(mpg ~ HorsePower+weight, data = mxdemo)

summary(multrgr)

par(mfrow=c(2,2))
plot(multrgr)

