library(dplyr)
library(ROCR)

df<-read.csv("C:\\Users\\SIT302-007\\Documents\\R\\R_data\\newAdTracking.csv")

head(df)
names(df)
str(df)
dim(df)

table(df$ip)
table(df$app)
table(df$device)
table(df$os)
table(df$channel)

colSums(is.na(df))

attach(df)

model <- glm(is_attributed~ip+app+device+os+channel, data=df)

new_df <- data.frame( ip = c(2948, 2684, 2685, 2686),
                      app = c(19 , 286, 21, 23),
                      device = c(0, 1, 1, 2),
                      os = c(13 , 25, 13, 13),
                      channel = c(213, 256, 122, 459))

pred <- predict(model, newdata = new_df, type="response")
pred

new_df <- new_df %>%
  mutate(is_attributed = as.integer(pred>0.5))

new_df
