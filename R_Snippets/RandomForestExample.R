## Install/ Load Packages ##
## **NOTE: The following code installs/loads packages on the users computer** ##
requiredPackages <- c("tidyverse", "MASS", "randomForest", "caTools", "pROC")
ipak <- function(pkg){
  new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
  if (length(new.pkg))
    install.packages(new.pkg, dependencies = TRUE)
  sapply(pkg, require, character.only = TRUE)
}
ipak(requiredPackages)

# Set seed for RF normalisation
set.seed(123)

DataFrame <- birthwt
str(DataFrame)
dim(DataFrame)
summary(DataFrame)

#Looks at the number of unique variables in each category
apply(DataFrame,2,function(x) length(unique(x)))
hist(DataFrame$age)

#Need to convert categorical variables >> Convert to factor!! (Else they are treated as numerics)
cols <- c("low", "race", "smoke", "ptl", "ht", "ui", "ftv")
for (i in cols){
  DataFrame[,i] = as.factor(DataFrame[,i])
}
str(DataFrame)

# splits database into a training and a validation database (70% is training)
ind= sample.split(Y= DataFrame$low, SplitRatio = 0.7)
trainDF <-DataFrame[ind,]
testDF <- DataFrame[!ind,]

# generate the random forest model
modelRandom <- randomForest(low~.,data = trainDF, mtry=3, ntree=20) #. means use all other variables to predict low
modelRandom #OOB= 0.76% (misclassification rate)

# Which variables are important
importance(modelRandom)
varImpPlot(modelRandom) #graphically shows which variables are important to the model!

#Predictions
PredictionsWithClass <- predict(modelRandom, testDF, type ='class')
t <- table(predictions= PredictionsWithClass, actual=testDF$low)
t

#Accuracy
sum(diag(t)/sum(t)) #0.98



## Plotting ROC Curve and calculating AUC
PredictionsWithProbs <- predict(modelRandom, testDF, type = 'prob')
PredictionsWithProbs
auc <- auc(testDF$low, PredictionsWithProbs[,2])
auc
plot(roc(testDF$low, PredictionsWithProbs[,2]))

# Find the best mtry
bestmtry <- tuneRF(trainDF, trainDF$low, ntreeTry = 20, stepFactor = 1.5, improve = 0.01, trace = T, plot = T)
bestmtry


