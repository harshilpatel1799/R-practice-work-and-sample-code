#######################
# HW1 Help - STAT 3201#
#######################

#get the working directory
getwd()

#set the working directory. you can change it if you like; the file, along w/ any output, will now save to this location
setwd("G:/OSU/2018 AU/STAT 3201/Assignments and Solutions")

#bring the data into R and name it; here, I've (uncreatively) chosen to call it q1.data
q1.data <- read.csv("STAT 3201 HW1 Question 1 Data.csv", header=TRUE)
#note - if you don't set the working directory you can type the entire file path inside the "" above
#header = TRUE tells R the first row contains the names of the variables

#you can extract the variables by using the format datasetname$variable; for example:
mean(q1.data$Mileage)

#if you don't want to type all that every time you want to do something w/ Mileage then you can rename it:
Mileage <- q1.data$Mileage
mean(Mileage)