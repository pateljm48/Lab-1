chooseCRANmirror()
install.packages()
q()
utils:::menuShowCRAN()
q()
library(dplyr)
library(caret)
oulad_data <- read.csv("C:\\Users\\patel\\Downloads\\oulad-students.csv")
oulad_data$final_result <- as.factor(oulad_data$final_result)
set.seed(123)  # For reproducibility
train_indices <- sample(1:nrow(oulad_data), 0.8 * nrow(oulad_data))
train_data <- oulad_data[train_indices, ]
test_data <- oulad_data[-train_indices, ]
logit_model <- glm(final_result ~ ., data = train_data, family = binomial(link = "logit"))
test_predictions <- predict(logit_model, newdata = test_data, type = "response")
threshold <- 0.5
predicted_classes <- ifelse(test_predictions > threshold, "Pass", "Fail")
actual_classes <- test_data$final_result
accuracy <- sum(predicted_classes == actual_classes) / length(actual_classes)
cat("Accuracy on test set:", accuracy, "\n")

oulad_data <- read.csv("C:\\Users\\patel\\Downloads\\oulad-assessments.csv")
oulad_data$score <- as.factor(oulad_data$score)
set.seed(123)  # For reproducibility
train_indices <- sample(1:nrow(oulad_data), 0.8 * nrow(oulad_data))
train_data <- oulad_data[train_indices, ]
train_data <- oulad_data[train_indices, ]
logit_model <- glm(final_result ~ ., data = train_data, family = binomial(link = "logit"))
logit_model <- glm(score ~ ., data = train_data, family = binomial(link = "logit"))
test_predictions <- predict(logit_model, newdata = test_data, type = "response")
oulad_data <- read.csv("C:\\Users\\patel\\Downloads\\oulad-assessments.csv")
> oulad_data$score <- as.factor(oulad_data$score)
> set.seed(123)  # For reproducibility
> train_indices <- sample(1:nrow(oulad_data), 0.8 * nrow(oulad_data))



library(dplyr)
library(caret)
oulad_data <- read.csv("C:\\Users\\patel\\Downloads\\oulad-assessments.csv")
oulad_data$is_banked <- as.factor(oulad_data$is_banked)
set.seed(123)
train_indices <- sample(1:nrow(oulad_data), 0.7 * nrow(oulad_data))
train_data <- oulad_data[train_indices, ]
test_data <- oulad_data[-train_indices, ]
logit_model <- glm(is_banked ~ ., data = train_data, family = binomial(link = "logit"))
test_predictions <- predict(logit_model, newdata = test_data, type = "response")
test_predictions <- predict(logit_model, newdata = test_data, type = "response")
threshold <- 0.4
predicted_classes <- ifelse(test_predictions > threshold, "0", "1")
actual_classes <- test_data$is_banked
accuracy <- sum(predicted_classes == actual_classes) / length(actual_classes)
cat("Accuracy on test set:", accuracy, "\n")
