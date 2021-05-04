requiredPackages <- c("tidyverse", "RColorBrewer", "reshape2", "visdat", "caTools")

ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
ipak(requiredPackages)

setwd("~/Documents/GitHub/Titanic_Kaggle")

titanic_train <- read.csv("train.csv", na.strings = c(""))
titanic_test <- read.csv("test.csv", na.strings = c(""))

#Test set missing Survived column, add it and treat empty values as NA.
#add a column to differentiate training or test set.

titanic_test$Survived = NA
titanic_train$Set <- rep("train", nrow(titanic_train))
titanic_test$Set <- rep("test", nrow(titanic_test))

#Combine test set to training set.
titanic = rbind(titanic_train, titanic_test)

#What data types do we have?
str(titanic)
head(titanic)
summary(titanic)