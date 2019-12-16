rm(list=ls())

library(dplyr)
library(stringr)
library(ggplot2)
search()

setwd("C:\\Users\\STUDY\\Desktop\\서울IT직업전문학교\\R\\Rdata")

df <- read.csv('restaurant-1-orders.csv')
View(df)
head(df)
dim(df)
str(df)
summary(df)
colSums(is.na(df))

## 연, 월, 시간
df2 <- df %>%
  mutate(year = as.numeric(substring((df$Order.Date), 7,10)),
         month = as.numeric(substring(df$Order.Date, 4,5)),
         day = as.numeric(substring((df$Order.Date), 1,2)),
         time = as.numeric(substring((df$Order.Date), 12,13)))
dim(df2)
colSums(is.na(df2))

## 2019 행 삭제
dat <- df[!(df$year == '2019') & !(df$year == '2015') ,]
head(dat)
dim(dat)


## 매출 Top10 메뉴
df_food <- dat %>%
  group_by(Item.Name) %>%
  summarise(total_price=sum(Product.Price)) %>%
  arrange(desc(total_price))
df_food

ggplot(data=df_food[1:10,], aes(x=reorder(Item.Name,-total_price), y= total_price))+geom_col() + coord_flip()

## 연도별 주문 건수 / 매출액
df_year <- dat %>%
  group_by(year) %>%
  summarise(order=sum(Quantity),
            income = sum(Product.Price))
df_year

ggplot(df_year, aes(x=year, y=income)) + geom_col()     

## 월별 주문 건수 / 매출액

df_month <- dat %>%
  group_by(month) %>%
  summarise(order=sum(Quantity),
            income = sum(Product.Price))
df_month

ggplot(df_month, aes(x=month, y=income)) + geom_col()




## 시간별 주문 건수
df_time <- dat %>%
  group_by(time) %>%
  summarise(order=sum(Quantity),
            income = sum(Product.Price))
df_time

ggplot(df_time, aes(x=time, y=income, group=1)) +
  geom_line(color='darkgreen', size=1.5) +
  geom_point(color='orangered2', size=2)

ggplot(df_time, aes(x=time, y=n)) + geom_col()


## 월/일별 총 매출
df_income <- dat %>%
  group_by(year, month, day) %>%
  summarise(income=sum(Product.Price))
df_income

View(df_income)
