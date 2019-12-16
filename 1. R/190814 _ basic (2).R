## 데이터 다루기

## 데이터 프레임
## 
kor <- c(80, 80, 90)
eng <- c(90, 80, 80)
math <- c(95, 100, 70)


##
# data.frame(col1, col2, col3)
?data.frame

df_score <- data.frame(kor, eng, math)
df_score
is(df_score)
class(df_score)


mean(df_score$kor)
mean(df_score$eng)
mean(df_score$math)

제품 <- c("사과", "딸기", "수박")
가격 <- c(6000, 8000, 12000)
판매량 <- c(10,5,5)

f_df <- data.frame(제품, 가격, 판매량)
f_df

is(f_df)
class(f_df)

mean(f_df$가격)
mean(f_df$판매량)

f_df$가격
class(f_df$가격)
class(f_df$제품)

summary(f_df)

## 사전 확인 : 
### 01. readxl 패키지가 설치 되어있어야 한다.
### 02. readxl 패키지를 불러와야 한다.
### 03. read_excel를 이용해서 불러올 수 있다.

install.packages("readxl")
read_exel()
library(readxl)
search()


### read_excel([파일경로])
df_exam <- read_excel("E:\\R_Doit\\excel_exam.xlsx")
df_exam

dim(df_exam)
names(df_exam)
head(df_exam,7)
summary(df_exam)


df_exam_csv <- read.csv("E:\\R_Doit\\csv_exam.csv")