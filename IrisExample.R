#load preloaded iris dataset
#data <- iris

#load iris dataset from CSV file
mydata <- read.csv(
  "C:/Users/User/Downloads/archive/Iris.csv",
  header=FALSE)

#launch help file on read.csv
?read.csv

#help file for packages
??readxl

#set the column names for the data
colnames(mydata) = 
  c("Sepal.Length",
    "Sepal.Width",
    "Petal.Length",
    "Petal.Width",
    "Class")

#view the data in separate window
View(mydata)
# provide a summary of the data
summary(mydata)
# create a histogram of one attribute
hist(mydata$Sepal.Length)
# 2D plot of the data
plot(mydata$Sepal.Length, data$Sepal.Width)

??ggplot

# install a package
install.packages("ggplot2")

# load ggplot2 package
library("ggplot2")

ggplot(data=mydata) +
  aes(x = Sepal.Length, y = Sepal.Width) +
  geom_point(aes(color = Class, shape = Class))