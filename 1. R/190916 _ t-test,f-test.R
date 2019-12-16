library(MASS)
head(UScrime)

## Prob : 범죄확률
## So : 남부 인지 아닌지

tbl_So <- table(UScrime$So)
tbl_So
barplot(tbl_So)

library(ggplot2)
ggplot(UScrime, aes(x=So)) + geom_bar()


### 가설검정
# 귀무가설 : 기존의 사실. 같은 투옥 확률을 갖는다.
# 대립가설 : 연구자가 제안한 가설. 같은 투옥 확률이 아니다.

# t 검정
# t-test : 독립성, 정규성, 등분산성
# 남부, 비남부
# 정규성 : 30개 이상일 경우 정규성이 만족된다.

## var.test(변수1, 변수2)
var.test(UScrime$Prob, UScrime$So)
## p-value < 0.05, 귀무가설 기각.

dim(UScrime)
t.test(Prob~So, data=UScrime)


### 두 집단이 독립이 아닌 종속.
## 종속 표본 t검정
### 귀무가설 : 젊은 남성 장년 남성의 실업률 평균이 가다.
### 대립가설 : 같지 않다.

## 등분산 체크
var.test(UScrime$U1, UScrime$U2)
t.test(UScrime$U1, UScrime$U2, paired=TRUE)


