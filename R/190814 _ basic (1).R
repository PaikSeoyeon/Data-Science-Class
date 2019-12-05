##  변수
a <- 1
d <- 3.5

a + d

##
var1 <- c(1,2,3,4,5)
var1

var1 <- c(1,2,3,4,5)
var2 <- c(1,2,3,4,5)

var1 + var2

##
str1 <- "Hello world"
str1

##
str2 <- c("Hello", "world", "Today")
str2

##
var3 <- c(5,8,7,6,5)

mean(var3)
max(var3)
min(var3)
sd(var3)
median(var3)
var(var3)

plot(var3)

##  문자열 처리 함수
str5 <- c(1,2,3,4,5)
is(str5)

str5 <- c("Hello", "world", "toto")
##  paste(벡터, collapase=",")
paste(str5, collapse = ",")
?paste

result <- paste(str5, collapse = " ")
result


### 패키지 이해
# * 패키지는 함수들을 모아둔 상자.
# * 
# 설치 : install.packages("ggplot2")
# 불러오기 : library(ggplot2)
# 확인 : search()

install.packages("ggplot2") # 그래프 그리기
library(ggplot2)
search()

?qplot
x <- c('a', 'a', 'b', 'b', 'b', 'c')
qplot(x)

x1 <- c('3','8', '6', '3', '10')
qplot(x1)


x2 <- c('$', '#', '@', '$', '&')
qplot(x2)


## 데이터 셋
search()
mpg
?mpg

## 데이터 셋 알아보기
# 행과 열 dim
# 이 데이터는 어떤 자료형일까?
# 데이터는 어떤 데이터가 있지? str
# 앞과 뒤에 몇개 행을 보기 head, tail
# 컬럼명은 뭐가 있을까? names
# 요약값을 볼 수 없을까? 


# 행과 열
dim(mpg)

# 앞/뒤의 8행
head(mpg,8)
tail(mpg,8)

# 컬럼명
colnames(mpg)
names(mpg)

# 요약값
summary(mpg)


#qplot
#qplot(data=데이터셋, x=컬럼명, y= 컬럼명)

qplot(data=mpg, x=cty)
qplot(data=mpg, x=drv, y=hwy, geom = "boxplot")
qplot(data=mpg, x=drv, y=hwy, geom = "boxplot", color=drv)

## qplot를 이용해서 mpg데이터 셋에 대해서 확인해보기 (frontier1020@gmail.com)
qplot(data=mpg, x=class, y=displ, geom = "boxplot")
qplot(data=mpg, x=drv, y=cty, geom = "boxplot")
qplot(data=mpg, x=year)

?mpg
str(mpg)



