library(ggplot2)
library(dplyr)

food <- read.csv("C:\\Users\\SIT302-007\\Documents\\R\\R_data\\2016 전국 음식점 정보.csv")

names(food)
head(food)
View(food)
dim(food)

newName <- c("Title", "C1", "C2", "Category", "Area", "City", "Summary")
colnames(food) <- newName
colnames(food)


table(food$Cat)

table(food$Area)

table(food$City)


colSums(is.na(food))

qplot(food$Category)
qplot(food$Area)

search()

### 지역별 한식
food_kr <- food %>%
  filter(Category == '한식') %>%
  group_by(Area) %>%
  summarise(n=n()) %>%
  arrange(desc(n))

food_kr

ggplot(data = food_kr, aes(x=reorder(Area,-n), y=n)) + geom_col()


### 지역별 이색음식점
food_kr <- food %>%
  filter(Category == '이색음식점') %>%
  group_by(Area) %>%
  summarise(n=n()) %>%
  arrange(desc(n))

food_kr

ggplot(data = food_kr, aes(x=reorder(Area,-n), y=n)) + geom_col()


### 음식 종류별 수
food_ca <- food %>%
  group_by(Category) %>%
  summarise(n=n()) %>%
  arrange(desc(n))

food_ca

ggplot(data = food_ca, aes(x=reorder(Category,-n), y=n)) + geom_col()


### 맛집이 많은 지역 top10
food_ct <- food %>%
  group_by(City) %>%
  summarise(n=n()) %>%
  arrange(desc(n))

food_ct[1:10,]

ggplot(data = food_ct[1:10,], aes(x=reorder(City,-n), y=n)) + geom_col()

