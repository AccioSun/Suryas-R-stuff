install.packages("devtools")
library("devtools")
devtools::install_github("klutometis/roxygen")
library(roxygen2)

heartdata <- read.csv("heart.csv", header=TRUE)
summary(heartdata)
#train data
set.seed(2)
library(caTools)
split <- sample.split(heartdata, SplitRatio = 0.8)
train <- subset(heartdata, split="TRUE")
test <- subset(heartdata, split="FALSE")
#munge data
heartdata$target <- as.factor(heartdata$target)
heartdata$chol <- as.factor(heartdata$chol)
#model
heartmodel <-glm(target ~ chol + trestbps , data=train, family = "binomial")
summary(heartmodel)
#prediction
pred <- predict(heartmodel, test, type="response")
pred
pred <- predict(heartmodel, train, type="response")
pred
#validate model using confusion matrix
confirmheart <- table(TrueValue=train$target, Predicted_Value = pred >0.5)
confirmheart
#accuracy
(confirmheart[[1,1]] + confirmheart[[2,2]]) / sum(confirmheart)
