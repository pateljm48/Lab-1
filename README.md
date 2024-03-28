# Lab-1
 library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> library(caret)
Loading required package: ggplot2
Loading required package: lattice
> data <- read.csv("C:\\Users\\patel\\Downloads\\oulad-students.csv")
> data$final_result <- as.factor(data$final_result)
> data$disability <- as.factor(data$disability)
> set.seed(123)
> training <- sample(1:nrow(data), 0.7 * nrow(data))
> train_data <- data[train_indices, ]
> test_data <- data[-train_indices, ]
> logit_model <- glm(final_result ~ ., data = train_data, family = binomial(link = "logit"))
Warning messages:
1: glm.fit: algorithm did not converge 
2: glm.fit: fitted probabilities numerically 0 or 1 occurred 
> testing_predictions <- predict(logit_model, newdata = test_data, type = "response")
> threshold <- 0.5
> predicted_classes <- ifelse(testing_predictions > threshold, "Pass", "Withdrawn")
> actual_classes <- test_data$final_result
> accuracy <- sum(predicted_classes == actual_classes) / length(actual_classes)
> cat("Accuracy on test set:", accuracy, "\n")
Accuracy on test set: NA 
