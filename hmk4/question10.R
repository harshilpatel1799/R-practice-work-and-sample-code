# HMK 4-QUESTION 10 - STAT 3201(DONGES)
# HARSHIL PATEL, 11/4/2018   
###################


#set working directory
setwd("C:/Users/offic/OneDrive - The Ohio State University/data analytics/R programming Files/hmk4")
set.seed(35)
vectorofmeans<-vector()
samples<-vector()
for (i in 1:1000) {
  samples<- rgamma(20,1000,scale = 20)
  vectorofmeans[i]<-mean(samples)
}
avg<-mean(vectorofmeans)
sdt<-sd(vectorofmeans)
par(mfrow=c(2,1))
hist(vectorofmeans,
     main = "Distribution of the Average Annual Income in City Section",
     ylab='f(x)',
     xlab = "Sample Mean",
     breaks = 25,
     xlim = c(min(vectorofmeans),max(vectorofmeans)),
     freq = FALSE)
boxplot(vectorofmeans,
        main = "Distribution of the Average Annual Income in City Section",
        xlab = "Sample Mean",
        horizontal = TRUE
        )


count<-0
for (x in 1:1000) {
  if(vectorofmeans[x]>20500){
    count<-count+1
  }
}
print(count)
