getwd() 

setwd("~/Downloads")
cpdemo<-read.csv("RegCorDataDemo.csv")
cpdemo
str(cpdemo)

plot(cpdemo$Age,cpdemo$Bpressure)

attach(cpdemo)

cor(Age,Bpressure)

cor.test(Age,Bpressure)

#-------Regression --------
RegrDemo<-lm(Bpressure~Age, data=cpdemo)
summary(RegrDemo)

coefficients(RegrDemo)

confint(RegrDemo, level=0.95)

fitted(RegrDemo)

residuals(RegrDemo)

new.ages <-data.frame(Age=c(45,57,62))
predict(RegrDemo, newdata=new.ages)

predict(RegrDemo,newdata=new.ages, interval="confidence")

predict(RegrDemo,newdata=new.ages, interval="confidence", level=.90)





