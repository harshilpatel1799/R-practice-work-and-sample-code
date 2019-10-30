###################
# HMK 1-QUESTION 1 - STAT 3201(DONGES)
# HARSHIL PATEL, 09/15/2018   
###################

#set working directory
setwd("C:/Users/offic/OneDrive - The Ohio State University/data analytics/R programming Files/hmk1")

#extract data into variables
ques1.data <- read.csv("STAT 3201 HW1 Question 1 Data.csv",header=TRUE)
idValues<- ques1.data$id
mileageValue<-ques1.data$Mileage
mpgValue<-ques1.data$mpg

#histogram  for mpg 
hist(mpgValue,
     main = 'Sample 7th Generation Honda Accord mpg Distrubution', 
     xlab = 'Miles per Gallon ("mpg")',
     ylab='Frequency',
     col='red',
     seq(17,32,1),
     xlim = c(min(mpgValue),max(mpgValue)),
     freq = TRUE)



#histogram for mileage
hist(mileageValue,
     main ='Sample 7th Generation Honda Accord Mileage Distrubution', 
     xlab = 'Mileage (thousands of miles)',
     ylab='Frequency',
     #ylim = c(0,1),
     col='blue',
     freq=FALSE)

#boxplot for mpg
boxplot(mpgValue,
        horizontal = TRUE,
        main = 'Sample 7th Generation Honda Accord MPG',
        xlab = 'Miles per Gallon ("mpg")',
        col = "red")

#boxplot for mileage
boxplot(mileageValue,
        horizontal = TRUE,
        main = 'Sample 7th Generation Honda Accord Mileage',
        xlab = 'Mileage (thousands of miles)',
        col = "blue")

#summary statistics for mpg and milegae
summary(mpgValue)
summary(mileageValue)
sd(mpgValue)
sd(mileageValue)













