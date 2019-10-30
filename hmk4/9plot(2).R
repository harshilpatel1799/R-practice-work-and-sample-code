
x <- seq(-3, 3, 0.1)
y <- dnorm(x, mean=0, sd=1)
plot(x, y, type="l", lwd=2,main='Distributions',yaxt="n",ylab = "f(x)",xlab='X')
par(new=TRUE)
curve(dt(x, 1), from = -3, to = 3, col = "red", xlab = "X", ylab = "f(x)", lwd = 2, ylim=c(0,0.4))
curve(dt(x, 2), from = -3, to = 3, col = "blue", add = TRUE, lwd = 2,ylab = "f(x)",xlab='X')
curve(dt(x, 4), from = -3, to = 3, col = "green", add = TRUE, lwd = 2,ylab = "f(x)",xlab='X')
curve(dt(x, 10), from = -3, to = 3, col = "purple", add = TRUE, lwd = 2,ylab = "f(x)",xlab='X')
curve(dt(x, 20), from = -3, to = 3, col = "yellow", add = TRUE, lwd = 2,ylab = "f(x)",xlab='X')

legend(-2.5,0.4, legend=c("X~Normal(0,1)", expression("X~t"[1]),expression("X~t"[2]), expression("X~t"[4]),expression("X~t"[10]),expression("X~t"[20])),
       col=c("black", "red","blue","green","purple","yellow"), lty=1:1, cex=0.8)