###################
# HMK 1-QUESTION 2 - STAT 3201(DONGES) 
# HARSHIL PATEL, 09/15/2018   
###################

#set working directory
setwd("C:/Users/offic/OneDrive - The Ohio State University/data analytics/R programming Files/hmk1")

#extract data into variables
ques2.data <- read.csv("STAT 3201 HW1 Question 2 Data.csv",header=TRUE)
IDValues<- ques2.data$id
SysBPvalues<-ques2.data$SysBP
BMIvalues<-ques2.data$BMI

#create 5 sample of 50 from population for each variables, Systolic BP and BMI
sample_sysBP_1<-sort(sample(SysBPvalues,50))
sample_sysBP_2<-sort(sample(SysBPvalues,50))
sample_sysBP_3<-sort(sample(SysBPvalues,50))
sample_sysBP_4<-sort(sample(SysBPvalues,50))
sample_sysBP_5<-sort(sample(SysBPvalues,50))
sample_BMI_1<-sort(sample(BMIvalues,50))
sample_BMI_2<-sort(sample(BMIvalues,50))
sample_BMI_3<-sort(sample(BMIvalues,50))
sample_BMI_4<-sort(sample(BMIvalues,50))
sample_BMI_5<-sort(sample(BMIvalues,50))

#display summary statistics for each sample
summary(sample_sysBP_1)
sd(sample_sysBP_1)
summary(sample_sysBP_2)
sd(sample_sysBP_2)
summary(sample_sysBP_3)
sd(sample_sysBP_3)
summary(sample_sysBP_4)
sd(sample_sysBP_4)
summary(sample_sysBP_5)
sd(sample_sysBP_5)

summary(sample_BMI_1)
sd(sample_BMI_1)
summary(sample_BMI_2)
sd(sample_BMI_2)
summary(sample_BMI_3)
sd(sample_BMI_3)
summary(sample_BMI_4)
sd(sample_BMI_4)
summary(sample_BMI_5)
sd(sample_BMI_5)








