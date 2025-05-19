#Perform t test

tdemo<-read.csv("tsample.csv")
str(tdemo)

##College should be converted to factor

tdemo$College<-factor(tdemo$College)

#Histogram of each college type tuition
library("lattice")
histogram(~Tuition|College, data = tdemo)

#Testing normality of each college type tuition
shapiro.test(tdemo$Tuition)

#p value >0.05, so we accept null hyp. So  its normally distributed


#Perform two tail independent samples test on tuition differences

library(MASS)
ttest<-t.test(Tuition~College, data=tdemo)
names(ttest)

ttest$p.value
ttest$conf.int

##More on ttest

##testing Mean against zero

x=c(9,9.5,9.6,10.2,11.6)

t.test(x)

t.test(x,mu=10)

t.test(x,mu=10,alternative = "less")





