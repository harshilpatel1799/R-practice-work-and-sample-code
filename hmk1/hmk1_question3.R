###################
# HMK 1-QUESTION 3 - STAT 3201(DONGES)
# HARSHIL PATEL, 09/15/2018   
###################

#set working directory
setwd("C:/Users/offic/OneDrive - The Ohio State University/data analytics/R programming Files/hmk1")

yvalues_pop<-c(82,81,47)
yvalues_female<-c(47,43,24)
yvalues_male<-c(35,38,23)
names(yvalues_pop)<-c("Obsese","Overweight","Neither")
names(yvalues_female)<-c("Obsese","Overweight","Neither")
names(yvalues_male)<-c("Obsese","Overweight","Neither")

barplot(yvalues_male, 
        main="Body Compostion Type in Male Sample",
        xlab="Body Compostion Type", 
        ylab="Number of Individuals",
        col = c("red","yellow","green"),
        ylim=c(0,50))


