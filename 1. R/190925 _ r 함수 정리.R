##
attach() - detach()

## import - python
## library() - R

## 데이터 프레임 만들기
## R - python 이 본떠서 만듬
## data.fram()
## as.data.frame()

## 데이터 결합
## 컬럼 기준
##
merge(), left_join()...

## python - pandas, 수치(numpy, scipy)
## R - plyr, dplyr
## 열선택 : select
## 행선택 : filter
## 파생변수 만들기 : mutate
## 그룹 만들기 : group_by
## 그룹 만들고 요약하기 : summarise

## 패키지 설치 및 불러오기
install.packages()
library()
search()

## 데이터 불러오기
read.csv()
read.table()

library(foreign)
read.spss()

library(readxl)
read_excel()

## 데이터 탐색
dim() #행열
summary() #요약값
head()
tail()
colnames()
names()
str()

## 결측치 확인
colSums(is.na(df))

## 빈도수 확인(범주형 변수)
table()

## 모델 만들기
## 회귀 모형 - lm(종속변수~var1 + var2 + ...)
## 로지스틱 회귀 모형 - glm(종속변수~var1 + var2 + ... family = binomial, data = )

## 예측
predict(, type='calss') # 분류(0,1) 예측
predict(, type='response') # 확률 예측