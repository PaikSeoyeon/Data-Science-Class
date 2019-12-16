install.packages("Amelia")
install.packages("caret")
install.packages("randomForest")

library(Amelia)
library(dplyr)
library(caret)
library(randomForest)

search()


train <- read.csv("C:\\Users\\SIT302-007\\Documents\\R\\R_data\\titanic\\train.csv",
                  na.strings = c("NA",""), stringsAsFactors = F)
test <- read.csv("C:\\Users\\SIT302-007\\Documents\\R\\R_data\\titanic\\test.csv",
                 na.strings = c("NA",""), stringsAsFactors = F)
sub <- read.csv("C:\\Users\\SIT302-007\\Documents\\R\\R_data\\titanic\\gender_submission.csv",
                na.strings = c("NA",""), stringsAsFactors = F)

## 데이터 전처리
names(test)
test$Survived <- NA

all <- rbind(train, test)
dim(all)

colSums(is.na(all))

## 범주형 변환
all$Sex <- as.factor(all$Sex)
all$Survived <- as.factor(all$Survived)
all$Pclass <- as.factor(all$Pclass)
str(all)

## 추가 파생변수
## Pclass, Sex 변수 생성
all$PclassSex[all$Pclass=='1' & all$Sex=='male'] <- 'P1Male'
all$PclassSex[all$Pclass=='2' & all$Sex=='male'] <- 'P2Male'
all$PclassSex[all$Pclass=='3' & all$Sex=='male'] <- 'P3Male'
all$PclassSex[all$Pclass=='1' & all$Sex=='female'] <- 'P1Female'
all$PclassSex[all$Pclass=='2' & all$Sex=='female'] <- 'P2Female'
all$PclassSex[all$Pclass=='3' & all$Sex=='female'] <- 'P3Female'

table(all$PclassSex)
names(all)

all %>%
  group_by(PclassSex) %>%
  summarise(n=n(),
            mean_age=mean(Age, na.rm=T),
            median_age=median(Age, na.rm=T))

colSums(is.na(all))
  
all[is.na(all$Embarked), 'Embarked'] = 'S'
all[is.na(all$Fare), 'Fare'] = median(all$Fare, na.rm=T)


all[is.na(all$Age)& all$PclassSex=='P1Female', 'Age'] = 36
all[is.na(all$Age)& all$PclassSex=='P1Male', 'Age'] = 42

all[is.na(all$Age)& all$PclassSex=='P2Female', 'Age'] = 28
all[is.na(all$Age)& all$PclassSex=='P2Male', 'Age'] = 29.5

all[is.na(all$Age)& all$PclassSex=='P3Female', 'Age'] = 22
all[is.na(all$Age)& all$PclassSex=='P3Male', 'Age'] = 25

colSums(is.na(all))

### 데이터 나누기
all$Embarked <- as.factor(all$Embarked)

trainClean <- all[!is.na(all$Survived), ]
head(trainClean)

testClean <- all[is.na(all$Survived), ]


### 데이터 나누기
### 7:3 (학습용:테스트용)
idx <- sample(1:nrow(trainClean),
              size=nrow(trainClean)*0.7, replace=F)
train_tr <- trainClean[idx,]
train_test <-trainClean[-idx,]

# testClean:
m <- glm(Survived~Pclass + Sex, family = binomial,
         data=train_tr)
pred <- predict(m, newdata = train_test, type="response")
pred <- as.integer(pred > 0.5)

real <- train_test[,'Survived']
#
xt = xtabs(~ pred + real)
xt

install.packages("caret")
install.packages("e1071")
library(caret)
library(e1071)
search()

pred <- as.factor(pred)
actual <- as.factor(real)
confusionMatrix(pred, real)

##### randomforest #####
search()
train_tr$PclassSex <- as.factor(train_tr$PclassSex)
train_test$PclassSex <- as.factor(train_test$PclassSex)

m2 <- randomForest(Survived ~ Pclass + Sex + PclassSex + SibSp + Age + Fare + Embarked, data=train_tr)
summary(m2)

rf_pred <- predict(m2, newdata = train_test, type=c("prob"))
rf_pred[0:10]

rf_pred <- predict(m2, newdata = train_test, type=c("class"))
rf_pred[0:10]
#
rf_pred <- as.factor(rf_pred)
real <- as.factor(real)
confusionMatrix(pred, real)



##### glm #####

dim(train); dim(test); dim(sub)
names(train); names(test); names(sub)

##
missmap(train)
missmap(test)
colSums(is.na(train))
colSums(is.na(test))

##
quantile(train$Age, na.rm = T)

train[is.na(train$Age),'Age'] = median(train$Age, na.rm=T)
test[is.na(test$Age),'Age'] = median(test$Age, na.rm=T)

table(train$Embarked, useNA='always')
table(test$Embarked, useNA='always')

### Embarked
train[is.na(train$Embarked),'Embarked'] = 'S'

### Fare
test[is.na(test$Fare),'Fare'] = median(test$Fare, na.rm=T)


### 모델 만들기
m <- glm(Survived~Sex + Age + Fare + Embarked,
         family=binomial, data=train)
summary(m)
###
pred <- predict(m, newdata=test, type="response")
pred

pred <- as.integer(pred>0.6)
pred[0:15]

names(sub)
sub['Survived'] = pred

write.csv(sub, file="firstSub5.csv", row.names = F)
list.files(path = ".")
