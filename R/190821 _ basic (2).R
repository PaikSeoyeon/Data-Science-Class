install.packages("ggplots2")
library(ggplot2)
search()
mpg


install.packages("dplyr")
library(dplyr)
search()

mtcars
?mtcars

dt_new <- mtcars
dim(dt_new)
head(dt_new)
tail(dt_new)

dt <- data.frame(var1=c(1,3,5), var2=c(2,4,6))
dt


## 새로운 데이터 컬럼
dt$total <- dt$var1 + dt$var2
dt

dt_new
dt_new$sum <- dt_new$disp + dt_new$hp + dt_new$drat
dt_new

## ifelse(조건문, 참, 거짓)
## ifelse(조건문, 참, ifelse(조건문, 참, 거짓))


library(ggplot2)
dat <- mpg
dat$total <- (dat$cty + dat$hwy) /2
summary(dat$total)

dat$passfail <- ifelse(dat$total > 20, "pass", "fail")
tail(dat, 10)

qplot(dat$passfail)

dat$grade <- ifelse(dat$total > 23.5, "A", ifelse(dat$total > 20.5, "B", "C"))
head(dat$grade, 20)

View(dat)

table(dat$grade)


## 값의변경
new_val <- c(1,2,3,5,6)
length(new_val)

new_val[3] <- 30
new_val

## new_val[조건문]
new_val[new_val %% 2 ==0]

new_val[new_val %% 2 ==0] = 200
new_val


# 실습2
ex2 <- seq(0,100,2)
ex2[ex2 %% 5 == 0] = 1000
ex2

ex2_1 <- seq(0,100,2)
ex2_1[ex2_1 %% 2 == 0 | ex2_1 %% 5 ==0] = 10000
ex2_1

ls()

# rm(변수 또는 객체명) ; 삭제
rm(ex2)
ls.str()

# install.packages()
class(installed.packages())
installed.packages()[ , c("package", "version")]
