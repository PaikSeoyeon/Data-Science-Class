library(dplyr)
titanic <- read.csv("C:\\Users\\SIT302-007\\Documents\\R\\tr_mod.csv")
titanic

names(titanic)

## 등급별 인원이 얼마나 될까?
table(titanic$Pclass)

## filter (행추출)
## filter (조건문)
P1 <- titanic %>% filter(Pclass==1) %>% head(5)
P1

## 실습3-1 Embarked가 C인 경우/ C아닌 경우 출력해보기.
EC <- titanic %>% filter(Embarked=='C' & Survived==1)
EC

qplot(data = titanic, x= Embarked)

options(max.print=3000)

EC2 <- titanic %>% filter(Embarked!='C') %>% head(5)
EC2

## 타이타닉 승선자 중에 2,3 등급 탄 사람들
dat <- titanic %>% filter(Pclass %in% c(2,3))
dat

# 실습4-1 survived만 제외한 컬럼을 만들어보자
names(titanic)

ex4 <- titanic %>% select(-Survived) %>% arrange(desc(Age))
names(ex4)
head(ex4)

ex4_2 <- titanic %>% select(-Survived, -Embarked)
names(ex4_2)

