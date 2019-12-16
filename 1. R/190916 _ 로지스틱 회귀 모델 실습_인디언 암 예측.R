### 미국에 사는 인디언들의 당뇨병 예측
###
install.packages("faraway")
library(faraway)

library(caret)

search()

data(pima)
pima
names(pima)

## 5:5
set.seed(0)
idx <- sample(NROW(pima)*0.5)
idx
train <- pima[idx, ]
test <- pima[-idx, ]

## 로지스틱 회귀 모델 구하기
## 지도학습, 종속변수가 범주형일때,

m <- glm(test~pregnant + glucose + bmi,
         family=binomial, data=train)
summary(m)

## 예측
pred <- predict(m, newdata=test, type="response")
pred[0:20]

pred <- as.integer(pred>0.5)
pred

actual <- test[  , "test"]
xt <- xtabs( ~ pred + actual)
xt

# 확률로 분할표 보기
prop.table(xt)

# caret 패키지를 이용한 정확도 및 기타 확인
# library(caret)

actual <- test[ , "test"]
actual <- as.factor(actual)

pred<- as.factor(pred)
confusionMatrix(pred, actual)

