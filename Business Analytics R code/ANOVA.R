##ANOVA

washes<-c(27,30,29,28,31,33,28,31,30,30,39,41,36,34,43)
types<-factor(rep(c("Type1","Type2","Type3"),c(5,5,5)))
cdemo<-data.frame(types,washes)
cdemo

boxplot(washes~types,data=cdemo)
#3 assumptions for ANOVA, normality,homogenity,no outlier
#Bartlett test to test homogeneity of variance

bartlett.test(washes~types,data=cdemo)

#test normality with Shapiro test
shapiro.test(washes)

#ANOVA test

anv1<-aov(washes~types,data = cdemo)
summary(anv1)

#As ANOVA is significant, we perform t test
##The Least significant difference test

TukeyHSD(anv1,conf.level = .95)
