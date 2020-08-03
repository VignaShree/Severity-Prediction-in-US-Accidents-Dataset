library(tidyverse)
library(scales)
library(lubridate)
library(plotly)
library(gridExtra)
library(tidytext)
library(modelr)
library(caret)
library(ROSE)
library(glmnet)
library(rpart)
library(rpart.plot)
library(randomForest)
options(warn = -1)

Acc <- read.csv("C:/Users/19175/Downloads/us-accidents/US_Accidents_Dec19.csv")
head(Acc)
ggcorr(Acc,label = TRUE)
options(scipen=10)

ggplot(Acc,aes(Severity))+geom_bar(position="identity",fill="red")

ggplot(data, aes(fill = name, x=name, y=value)) + 
  geom_bar(stat = "identity") 

ggplot(data=Acc,mapping=aes(x=State))+geom_bar();


#Hypothesis Testing

data <- read.csv('C:/Users/19175/Downloads/CAAccidents.csv')
t.test(data$Severity[data$Side=='L'],data$Severity[data$Side=='R'], alternative='less')

t.test(data$Severity[data$Source=='MapQuest'],data$Severity[data$Source=='Bing'], alternative='less')
