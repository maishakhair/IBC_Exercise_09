setwd("C:/Users/paulw/Downloads")
iris<-read.csv("iris.csv")

library(ggplot2)
library(cowplot)
library(reshape2)

scatter.smooth(iris$Sepal.Length,iris$Sepal.Width)

#Part 1: Scatter plot

a=ggplot(data=iris,mapping=aes(x=Sepal.Width,y=Sepal.Length))

a+geom_point()+xlab("Sepal Width")+ylab("Sepal Length")+
  theme_bw()+stat_smooth(method="loess", color="black")

#Part 2: 
data<-read.csv("data.txt",header=TRUE)
head(data)

#Bar Plot
a=ggplot(data=data,mapping=aes(x=region,y=observations))

a+xlab("Region")+ylab("Observations")+theme_bw()+
  geom_bar(stat="summary",fun.y="mean")

#Scatter Plot
a=ggplot(data=data,mapping=aes(x=region,y=observations))

a+geom_jitter(size=0.1,color="Blue")+xlab("Region")+ylab("Observations")+
  theme_bw()

#The bar plot and the scatter plot tells us different stories about the data. The bar plot only gives us the mean of all the observations and they all look pretty similar. The mean barplot obviously doen not convey the range of observations and in the instance of the dataset south where the observations are bi-modal, the mean does not give us an accurate representation of the data.