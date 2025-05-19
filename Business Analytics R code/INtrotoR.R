getwd()
toy.df<-read.csv("Rdemo2.csv")
str(toy.df)
summary(toy.df)

mean(toy.df$Sales)
median(toy.df$Sales)

attach(toy.df)
sd(Sales)
var(Sales)
sum(Sales)


##Adding column and rows to df

toy.df<-read.csv("Rdemo3.csv")
str(toy.df)

toy1.df<-read.csv("Rdemo4.csv")
str(toy1.df)

toy2.df<-cbind(toy.df,toy1.df)
toy5.df<-rbind(toy2.df, c(150,2,400,564,392))

quantile(toy.df$Sales)


##Base R Graphics
library(MASS)
edit(Cars93)

hist(Cars93$Price,xlab = "Price($Thousands)", xlim = c(0,70), main = "Car prices of 1993 Cars",probability = TRUE)

lines(density(Cars93$Price))


##Bar Plots

table(Cars93$Type)

barplot(table(Cars93$Type),ylim = c(0,25),xlab = "Type",main = "Barchart",ylab = "Frequency",space = 0)

##Piegraphs

pie(table(Cars93$Type))

##Scatterplot
##Relation b/w horsepower and MPG

plot(Cars93$Horsepower, Cars93$MPG.city, main = "MPG city vs HP", pch=16)

##Boxplot

boxplot(Horsepower ~ Cylinders, data = Cars93, xlab = "Cylinders", ylab = "HP" )
