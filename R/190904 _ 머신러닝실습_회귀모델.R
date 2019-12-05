kor <- c(50,70,80,90,100)
eng <- c(77,88,99,10,70)
math <- c(55,75,85,95,105)

all_score <- data.frame(kor, eng, math)
all_score

## 모델 - 회귀분석
## lm(패턴, 데이터)
## lm(출력(답)~입력(문제), data=이름)
model1 <- lm(math~kor+eng, data=all_score)
model1
summary(model1)

dat <- data.frame(kor=c(50,70), eng=c(77,88))
pred <- predict(model1, newdata = dat)
pred

### 실습해보기1

kor <- c(50,70,60,90,100)
eng <- c(77,88,99,40,70)
hist <- c(55,75,85,95,55)

all_score <- data.frame(kor, eng, hist)

model2 <- lm(eng~kor+hist, data=all_score)
model2
summary(model2)

ndat <- data.frame(kor= 82, hist=21)
pred <- predict(model2, newdata = ndat)
pred

### 실습해보기2


bike <- read.csv("C:/Users/SIT302-007/Documents/R/R_data/bike_sharing.csv")

head(bike)

model_b <- lm(count~humidity+temp, data=bike)
model_b
summary(model_b)

ndat <- data.frame(humidity = c(5,8,3,0), temp = c(30,37,22,13))
pred <- predict(model_b, newdata = ndat)
pred
