install.packages("gridExtra")
library(dplyr)
library(ggplot2)
library(gridExtra)

df <- read.csv("C:\\Users\\SIT302-007\\Documents\\R\\tr_mod.csv")

dim(df)
str(df)
names(df)

table(df$Pclass)
table(df$Embarked)
table(df$Survived)
table(df$SibSp)

max(df$Age)
min(df$Age)

p1 = ggplot(data=df, aes(x=Age, y=Survived, fill=Sex)) + geom_col()
p2 = ggplot(data=df, aes(x=Sex, y=Survived, fill=Sex)) + geom_col()
p3 = ggplot(data=df, aes(x=Pclass, y=Survived, fill=Sex)) + geom_col()
p4 = ggplot(data=df, aes(x=Embarked, y=Survived, fill=Sex)) + geom_col()
grid.arrange(p1, p2, p3, p4, ncol=2, nrow=2, top="Titanic_Survived")

sum(is.na(df))
colSums(is.na(df))
colSums(!is.na(df))

#결측치 Cabin

df$Cabin <- ifelse(is.na(df$Cabin), 'AAA', df$Cabin)
df$Cabin
