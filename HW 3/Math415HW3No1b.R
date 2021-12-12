x = c(2.27, 2.76, 3.27, 3.31, 3.7, 3.85, 4.31, 4.39, 4.42, 4.81, 4.9, 5.05, 5.21, 5.62, 5.88)
y = c(2500, 365, 23700, 5491, 14000, 78200, 70700, 138000, 304500, 341948, 49375, 260200, 867023, 1340000, 1092759)

plot(x, y, pch=16, col="blue", xlab="Mean walking velocity", ylab="Population size") #pch = plot character
title("Average walking velocity of population")
myData = data.frame(x, y) #creates a data frame
#generates a model with an initial guess of 0
yFit = nls(y ~ a*x^5, data = myData, start = list(a = 1))
#printing attributes of our model
yFit
#get coefficient
a = coef(yFit)
lines(x, predict(yFit), col="red")
legend(3, 1000000, legend=c("Data set", "Model"), col=c("blue", "red"), lty=1:2, cex=0.8)

