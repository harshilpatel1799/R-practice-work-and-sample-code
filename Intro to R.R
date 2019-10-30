#########################
# Intro to R - STAT 3201#
#########################

############
#References#
############

#https://cran.r-project.org/doc/manuals/r-release/R-intro.pdf
#http://www.mas.ncl.ac.uk/~ndjw1/teaching/sim/R-intro.html
#http://www.personality-project.org/R/r.commands.html


#get the working directory
getwd()

#set the working directory. you can change it if you like; the file, along w/ any output, will now save to this location
setwd("G:/OSU/2018 AU/STAT 3201")


#you can use R as a calculator w/ built in functions

#this is an expression; it will print the result below but nothing will be stored
sqrt(16)


#this is an assignment; it assigns the result to 'root' and nothing is printed. the result should be displayed to the right
root <- sqrt(16)


#you can flip things around and assign from left to right; this is not something I generally do
sqrt(25) -> root


#assign sqrt(n) to root
root <- sqrt(n)

n <- 16

#this does not change the value of root since the assignment of n does not precede that of root


#assign n
n <- 16

#assign sqrt(n) to root
root <- sqrt(n)

#here, root will have a value of 4



#########
#Vectors#
#########


#assign n to be a vector of values
n <- c(1,4,9,16)

#assign sqrt(n) to root; the sqrt function will be applied to all values in the vector n and root will now be a vector rather than a number
root <- sqrt(n) # works component wise.


#you can perform arithmetic operations on vectors; the operation is down componentwise

#add ith element of root and ith element of n
add <- root+n
add


#subtract the ith element of n from the ith element of root
subtract <- root-n
subtract


#multiply ith element of root and ith element of n
mult <- root*n
mult


#divide ith element of root by ith element of n
divide <- root/n
divide


#as seen above, you can apply mathematical functions to a vector

#log is the natural log
log.mult <- log(mult)
log.mult

#use each component as an exponent 
exp.mult <- exp(mult)
exp.mult




####################
#Logical Operations#
####################



#you can also apply logical conditions to generate logical vectors 

#generate a vector of true and false values with true corresponding to a component > 10
logic.gt10 <- n>10
logic.gt10
##works componet wise, component wise boolean operators

#you can negate or flip the values via the ! command
logic.lte10 <- !logic.gt10
logic.lte10


#you can force the true values to be used as a 1 and the false values to be used as a 0 by using logical vectors in arithmetic operations

#sum adds the values of a vector. Here, it will return the number of trues
sum(logic.gt10)

#you can get the number of falses by doing either
sum(logic.lte10)
#or
sum(!logic.gt10)


#you can also intersect or union logical vectors

#the '&' is the intersection. it returns true when both components are true and returns false o.w.
logic.gt10&logic.lte10
#and


#the '|' is the union. it returns true when either component is true and returns false only when both are false
logic.gt10|logic.lte10
#or


#these ideas are very useful when estimating population proportions/percentages/probabilities (see below)

#################
#Generating Data#
#################
##lowercase n is sample size


#you can generate a vector in a variety of ways
#the seq function will generate a vector from a starting value to an ending value by 1 (default) or by a specified increment
index1 <- seq(1,100)
index2 <-seq(2,37, by=2)
index3 <-seq(1,2,by=0.01)

#the following generate the same result as seq(1,100)
index4 <- c(1:100)
index5 <- 1:100


#Suppose we consider the index1 to be subject number. We can select a random sample of subjects.
#i.e., there are 100 subjects in the pop and we want to randomly sample n of them
n <- 15
sample1 <-sample(index1,n)#chooses sample from index1 vector

#we can then sort the sample so the subject numbers are in order
sample2 <- sort(sample1)

#note that this can be done with one command
sample3 <- sort(sample(1:100,15))

#the best way to do this really depends on what has already been done


#you can use the rep function to replicate a value or a vector
#create a vector of 1's of lenght n
v1 <- rep(1, times=n)
v1

#you can also replicate a vector (back to back, so to speak)
v2 <- rep(sample2, times=2)
v2

#or replicate the elements of the vector
v3 <- rep(sample2, each=2)
v3




#Base R also has all of the dist's we will be working with built in. You can use built in functions to randomly sample from any of them

#get 100 ind draws from a standard normal
norm.sample <- rnorm(100,0,1)



####################
#Summary Statistics#
####################



#the mean/avg of the normal is 0 while the standard deviation is 1
#do you think the sample will have the same avg and std. dev. as the pop?
#you can check w/ some built in func's
round(mean(norm.sample),4)
sd(norm.sample)

#if you rerun lines the above snippet your should see the mean and sd in the sample change
#this is because you're getting a different random sample


#if you don't want that to happen (and often you don't) then you can see the seed in the random number generator (any pos integer works)
set.seed(654)
small.sample1 <- rnorm(10,0,1)
set.seed(654)
small.sample2 <- rnorm(10,0,1)
#these samples should be the same; to check run
small.sample1 - small.sample2


#you can also get some other summary statistics, like the max and the min
max(norm.sample)
min(norm.sample)

#or you can use the summary or the fivenum function to get the 5 number summary
#this gives the min, 1st quartile, medain, 3rd quartile, and max
summary(norm.sample)
fivenum(norm.sample)

#note that they yield different results; this is due to there being no standard way to compute 1st and 3rd quartile when n is even


#for a standard normal, the median = mean = 0; that is, exactly 1/2 of the values should be above 0 and 1/2 below 0 in an
#infinite number of draws. We only took a sample of 100, so I highly doubt it's exactly 50/50. We can use what we learned earlier to check


#define an indicator variable that is true if the value is greater than 1/2 and false if not
indicator <- norm.sample>0
indicator

#to get the observed probability of being > 0 (aka, the sample proporiton of obs. above 0) we just take the mean of the indicator vector
p.hat <- mean(indicator)
p.hat




###################
#Combining Vectors#
###################



#you can bind together vectors into other objects by columns or rows
object1 <- cbind(index1, norm.sample, indicator)
object2 <- rbind(index1, norm.sample, indicator)

#you can force these to be matrices
matrix1 <- as.matrix(object1)

#or data frames
data.frame1 <- as.data.frame(object2)

#and you can throw any object (vector, number, matrix, data frame, etc.) into a list (even other lists)
list.1 <- as.list(object1,matrix1,data.frame1)



#you can pick off parts of objects, too. the [,2] says take all rows, 2nd col of object1. [k,] picks off the kth row.
sample4 <- object1[,2]

#this should be norm.sample; to check run
norm.sample - sample4


#[i,j] extracts the item in the ith row, jth col
object1[1,3]





####################
#Graphical Displays#
####################



#in addition to numerical summary statistics you should also look at the data graphically

#for example, a histogram
hist(norm.sample)

#there are ton of options; perhaps you want to relabel the graph and the hor. axis
hist(norm.sample, main='This is a Title', xlab='Hor. Axis Label')

#you can change the range on either axis, too
hist(norm.sample, main='This is a Title', xlab='Hor. Axis Label', ylim=c(0,25))

#you can change the bin widths, too
hist(norm.sample, main='This is a Title', xlab='Hor. Axis Label', ylim=c(0,25), breaks=100)
#this is not generally something you'll need to do

#you can change the color, if you'd like
hist(norm.sample, main='This is a Title', xlab='Hor. Axis Label', ylim=c(0,25), col='grey', border='red')




#a boxplot is another option. it's a graphical display of the 5 number summary
boxplot(norm.sample)

#I have a strong preference for horizontal boxplots; it makes it much easier to compare them to the histogram
boxplot(norm.sample, horizontal = TRUE)

#you can add a title and a hor axis label
boxplot(norm.sample, horizontal = TRUE, main='This is a Boxplot', xlab='Value')

#you can add the color; this may be useful with side by side boxplots
boxplot(norm.sample, horizontal = TRUE, main='This is a Boxplot', xlab='Value', col='blue')




#you may also want to make a density plot
#first, get the density data
temp <- density(norm.sample)
#now, plot it
plot(temp)
#maybe you want it filled in, with a better title, label
plot(temp,main='Kernel Density of Std Norm Sample', xlab='n=100')
polygon(temp,col='grey', border='red')

#since we know the observations came from a normal dist we should expect something roughly similar to a bell shaped curve
#play around with taking samples smaller and larger than 100 to see what effect, if any, there is


##########
#Packages#
##########


#extra functionality can be gained by installing and loading packages. you only need to install a package once
#other packages may install if the chosen package is dependent on them

#install the ggplot2 package
install.packages("ggplot2")


#to use the package you need to load the library. this must be done every time you write a program that will use features of the package
library(ggplot2)