###################
# HMK 3-QUESTION 6 - STAT 3201(DONGES)
# HARSHIL PATEL, 10/19/2018   
###################


#set working directory
setwd("C:/Users/offic/OneDrive - The Ohio State University/data analytics/R programming Files/hmk3")
alpha<-1000
beta<-20
avg<-alpha*beta
std.dv<-sqrt(alpha*beta^2)

#draw the gamma distribution
range =seq(avg-10*std.dv,avg+10*std.dv,0.001)
fuct=dgamma(range,alpha,rate=1/beta)
fuct2=dnorm(range,avg,std.dv)
plot(range,fuct,
     ylim=c(0,max(fuct)),
     type = "l", lwd = 3,
     col='blue',
     main='Distribution of Annual Income In City Section', 
     xlab='Income($)',
     ylab='Relative Frequency')
#draw the normal approximation distribution
par(new=TRUE)
plot(range,fuct2, type="l", col="red" )
