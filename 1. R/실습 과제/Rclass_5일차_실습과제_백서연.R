library(rpart)
search()

data(iris)

df <- iris
set.seed(123)
idx <- sample(1:nrow(df), nrow(df)*0.7,
              replace = FALSE)
train <- iris[idx, ]
test <- iris[-idx, ] 
new_test <- test[, c('Sepal.Length', 'Sepal.Width', 'Petal.Length', 'Petal.Width')]


dim(train)
dim(new_test)
names(train)
names(new_test)

r_model <- rpart(Species~Sepal.Length+Sepal.Width+Petal.Length+Petal.Width,
                 data = train,
                 method = "class")

pred <- predict(r_model, new_test, type="class")
pred

data.frame(predict = pred, test_Species = test$Species)

## 135
