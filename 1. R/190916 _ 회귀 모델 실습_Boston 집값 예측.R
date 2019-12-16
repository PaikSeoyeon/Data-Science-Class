kor <- c(50,70,80,90,100)
eng <- c(77,88,99,100,70)
math <- c(55,75,85,95,105)
his <- c(80,70,50,67,90)

all_score <- data.frame(kor, eng, math)
all_score

## 단순 선형회귀
model1 <- lm(math~kor, data=all_score)
model1
str(model1)

## 다중 선형회귀
model2 <- lm(math~kor+eng, data=all_score)
model2
str(model2)

# 실습해보기 1
total <- data.frame(kor, eng, his)
total

model3 <- lm(his~kor+eng, data=total)
model3

dat <- data.frame(kor=c(70,86,95), eng=c(54,50,60))
dat

pred1 <- predict(model3, newdata = dat)
pred1

# 실습해보기 2
bike <- read.csv("C:\\Users\\SIT302-007\\Documents\\R\\R_data\\bike_sharing.csv")

head(bike,3)

model_bike <- lm(count~temp+humidity, data=bike)
model_bike

new_data <- data.frame(temp=c(20, 15, 30), humidity=c(80, 60, 90))
new_data

pred_count <- predict(model_bike, newdata = new_data)
pred_count

real_data <- data.frame(temp=c(9.84, 9.02), humidity=c(81, 80))

pred_count <- predict(model_bike, newdata = real_data)
pred_count

# Regression 모델 알아보기.
# 회귀분석에 대해 알아보기

mtcars

plot(mtcars$gear, mtcars$mpg,
     xlab="자동차 배기량", 
     ylab="자동차의 연비", 
     pch = 15, main="자동차배기량과 연비의 관계")

model <- lm(mpg~disp, data=mtcars)
abline(model)

model$residuals

### MSE(mean square error)
sum(model$residuals^2)/31

names(mtcars)
?mtcars

head(mtcars)

model_mtcars <- lm(mpg~., data=mtcars)
model_mtcars

plot(mtcars$wt, mtcars$mpg,
     pch = 15)

model_mc_1 <- lm(mpg~wt, data=mtcars)
model_mc_1

abline(model_mc_1)


###
library(MASS)
data("Boston")
head(Boston)

set.seed(0)
idx <- sample(1:nrow(Boston),
              size=nrow(Boston)*0.7,
              replace=F)
idx

Boston_tr <- Boston[idx, ]
Boston_test <- Boston[-idx, ]

dim(Boston_tr) ; dim(Boston_test)

## 모델 생성
lm.Model <- lm(medv~. , data=Boston_tr)
summary(lm.Model)

## 모델 예측
pred_value <- predict(lm.Model, Boston_test)
pred_value

## MAE : |실제값 - 예측값|/n
dim(Boston_test); length(pred_value)
n1 = length(pred_value)
diff_val = abs(Boston_test$medv - pred_value)
mae_value = sum(diff_val)/n1
mae_value

### 실습

#1 6:4
set.seed(0)
idx <- sample(1:nrow(Boston),
              size=nrow(Boston)*0.6,
              replace=F)

Boston_tr <- Boston[idx, ]
Boston_test <- Boston[-idx, ]

lm.Model <- lm(medv~. , data=Boston_tr)
pred_value <- predict(lm.Model, Boston_test)

n1 = length(pred_value)
diff_val = abs(Boston_test$medv - pred_value)
mae_value = sum(diff_val)/n1
mae_value

#2 5:5
set.seed(0)
idx <- sample(1:nrow(Boston),
              size=nrow(Boston)*0.5,
              replace=F)

Boston_tr <- Boston[idx, ]
Boston_test <- Boston[-idx, ]

lm.Model <- lm(medv~. , data=Boston_tr)
pred_value <- predict(lm.Model, Boston_test)

n1 = length(pred_value)
diff_val = abs(Boston_test$medv - pred_value)
mae_value = sum(diff_val)/n1
mae_value


# 8:2
set.seed(0)
idx <- sample(1:nrow(Boston),
              size=nrow(Boston)*0.8,
              replace=F)

Boston_tr <- Boston[idx, ]
Boston_test <- Boston[-idx, ]

lm.Model <- lm(medv~. , data=Boston_tr)
pred_value <- predict(lm.Model, Boston_test)

n1 = length(pred_value)
diff_val = abs(Boston_test$medv - pred_value)
mae_value = sum(diff_val)/n1
mae_value


# 9:1
set.seed(0)
idx <- sample(1:nrow(Boston),
              size=nrow(Boston)*0.9,
              replace=F)

Boston_tr <- Boston[idx, ]
Boston_test <- Boston[-idx, ]

lm.Model <- lm(medv~. , data=Boston_tr)
pred_value <- predict(lm.Model, Boston_test)

n1 = length(pred_value)
diff_val = abs(Boston_test$medv - pred_value)
mae_value = sum(diff_val)/n1
mae_value


###

set.seed(0)
idx <- sample(1:nrow(Boston),
              size=nrow(Boston)*0.9,
              replace=F)

Boston_tr <- Boston[idx, ]
Boston_test <- Boston[-idx, ]

lm.Model <- lm(medv~. , data=Boston_tr)
summary(lm.Model)

pred_value <- predict(lm.Model, Boston_test)
n1 = length(pred_value)
n1


diff_val = abs(Boston_test$medv - pred_value)
mse_value = sum(diff_val^2)/(n1-13)
mse_value

names(Boston)
dim(Boston)

