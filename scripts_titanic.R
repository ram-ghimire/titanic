library(tidyverse)
test <- read_csv("data/test.csv")
train <- read_csv("data/train.csv")

test_survived <- data.frame(survived=rep("None", nrow(test)),test[,])

data_combined <- rbind(train,test_survived)

str(test_survived)
str(train)

?rep

library(readr)
train_new <- read_csv("data/train.csv", col_types = cols(PassengerId = col_integer()))
View(train_new)

Survived <- train_new %>% 
  select(-8) %>%
  na.omit() %>% 
  filter(Survived==1)

male_survived <- Survived %>% 
  filter(Sex=="male")

old_male_survived <- male_survived %>% 
  filter(Age>=40)

old_female_survived <- Survived %>%
  filter(Sex=="female",Age>=40)

young_male_survived <- male_survived %>% 
  filter(Age<40) %>% 
  nrow()

young_female_survived <- Survived %>%
  filter(Sex=="female",Age<40) %>% 
  nrow()

died_psg <- train_new %>% 
  filter(Survived==0)

male_died <- died_psg %>% 
  filter(Sex=="male")
  

adult_male_died <- male_died %>% 
  filter(Age>=40) %>% 
  nrow()

young_female_died <- died_psg %>%
  filter(Sex=="female",Age<40) %>% 
  nrow()

adult_female_died <- died_psg %>%
  filter(Sex=="female",Age>=40) %>% 
  nrow()



  


