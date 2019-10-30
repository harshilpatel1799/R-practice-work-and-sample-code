###################
# HMK 4-QUESTION 9 - STAT 3201(DONGES)
# HARSHIL PATEL, 11/4/2018   
###################


#set working directory
setwd("C:/Users/offic/OneDrive - The Ohio State University/data analytics/R programming Files/hmk4")

Nmean<-0
Nsd<-1
v1<-1
v2<-2
v3<-4
v4<-10
v5<-20
range1=seq(Nmean-3.1*Nsd,Nmean+3.1*Nsd,0.01)
Nformula=dnorm(range1, mean = Nmean, sd = Nsd, log = FALSE)
t1=dt(range1,v1,log = FALSE)
t2=dt(range1,v2,log = FALSE)
t3=dt(range1,v3,log = FALSE)
t4=dt(range1,v4,log = FALSE)
t5=dt(range1,v5,log = FALSE)

#draw the Normal(0,1) distribution
plot(range1,Nformula,
     type = "l", lwd = 0.2,
     col='black',
     main='Distributions', 
     xlab='X',
     ylab='f(x)',
     yaxt="n")
par(new=TRUE)
plot(range1,t1,
     type = "l", lwd = 0.2,
     col='blue',
     main='Distributions', 
     xlab='X',
     ylab='f(x)',
     yaxt="n")
par(new=TRUE)
plot(range1,t2,
     type = "l", lwd = 0.2,
     col='red',
     main='Distributions', 
     xlab='X',
     ylab='f(x)',
     yaxt="n")
par(new=TRUE)
plot(range1,t3,
     type = "l", lwd = 0.2,
     col='purple',
     main='Distributions', 
     xlab='X',
     ylab='f(x)',
     yaxt="n")
par(new=TRUE)
plot(range1,t4,
     type = "l", lwd = 0.2,
     col='green',
     main='Distributions', 
     xlab='X',
     ylab='f(x)',
     yaxt="n")
par(new=TRUE)
plot(range1,t5,
     type = "l", lwd = 0.2,
     col='yellow',
     main='Distributions', 
     xlab='X',
     ylab='f(x)',
     yaxt="n")
ticks<-c(0,0.1,0.2,0.3,0.4)
axis(2,at=ticks,labels=ticks)
legend(-2.5,0.4, legend=c("X~Normal(0,1)", expression("X~t"[1]),expression("X~t"[2]), expression("X~t"[4]),expression("X~t"[10]),expression("X~t"[20])),
       col=c("black", "blue","red","purple","green","yellow"), lty=1:1, cex=0.8)


######################################################
qnorm(0.95, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qt(0.95,v1, lower.tail = TRUE, log.p = FALSE)
qt(0.95,v2, lower.tail = TRUE, log.p = FALSE)
qt(0.95,v3, lower.tail = TRUE, log.p = FALSE)
qt(0.95,v4, lower.tail = TRUE, log.p = FALSE)
qt(0.95,v5, lower.tail = TRUE, log.p = FALSE)
######################################################################
qnorm(0.95, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qt(0.95,v1, lower.tail = FALSE, log.p = FALSE)
qt(0.95,v2, lower.tail = FALSE, log.p = FALSE)
qt(0.95,v3, lower.tail = FALSE, log.p = FALSE)
qt(0.95,v4, lower.tail = FALSE, log.p = FALSE)
qt(0.95,v5, lower.tail = FALSE, log.p = FALSE)
########################################################################
qnorm(0.975, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qt(0.975,v1, lower.tail = TRUE, log.p = FALSE)
qt(0.975,v2, lower.tail = TRUE, log.p = FALSE)
qt(0.975,v3, lower.tail = TRUE, log.p = FALSE)
qt(0.975,v4, lower.tail = TRUE, log.p = FALSE)
qt(0.975,v5, lower.tail = TRUE, log.p = FALSE)
######################################################################
qnorm(0.975, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qt(0.975,v1, lower.tail = FALSE, log.p = FALSE)
qt(0.975,v2, lower.tail = FALSE, log.p = FALSE)
qt(0.975,v3, lower.tail = FALSE, log.p = FALSE)
qt(0.975,v4, lower.tail = FALSE, log.p = FALSE)
qt(0.975,v5, lower.tail = FALSE, log.p = FALSE)



########################################################################
pt(1.96,v1,lower.tail = TRUE, log.p = FALSE)-pt(-1.96,v1,lower.tail = TRUE, log.p = FALSE)
pt(1.96,v2,lower.tail = TRUE, log.p = FALSE)-pt(-1.96,v2,lower.tail = TRUE, log.p = FALSE)
pt(1.96,v3,lower.tail = TRUE, log.p = FALSE)-pt(-1.96,v3,lower.tail = TRUE, log.p = FALSE)
pt(1.96,v4,lower.tail = TRUE, log.p = FALSE)-pt(-1.96,v4,lower.tail = TRUE, log.p = FALSE)
pt(1.96,v5,lower.tail = TRUE, log.p = FALSE)-pt(-1.96,v5,lower.tail = TRUE, log.p = FALSE)
########################################################################
pt(2.575,v1,lower.tail = TRUE, log.p = FALSE)-pt(-2.575,v1,lower.tail = TRUE, log.p = FALSE)
pt(2.575,v2,lower.tail = TRUE, log.p = FALSE)-pt(-2.575,v2,lower.tail = TRUE, log.p = FALSE)
pt(2.575,v3,lower.tail = TRUE, log.p = FALSE)-pt(-2.575,v3,lower.tail = TRUE, log.p = FALSE)
pt(2.575,v4,lower.tail = TRUE, log.p = FALSE)-pt(-2.575,v4,lower.tail = TRUE, log.p = FALSE)
pt(2.575,v5,lower.tail = TRUE, log.p = FALSE)-pt(-2.575,v5,lower.tail = TRUE, log.p = FALSE)

