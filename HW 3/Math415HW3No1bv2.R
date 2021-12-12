x = c(2.27, 2.76, 3.27, 3.31, 3.7, 3.85, 4.31, 4.39, 4.42, 4.81, 4.9, 5.05, 5.21, 5.62, 5.88) # averagevelocity
y = c(2500, 365, 23700, 5491, 14000, 78200, 70700, 138000, 304500, 341948, 49375, 260200, 867023, 1340000, 1092759) #population size
#Plot tranformed data (lnx, lny)
plot(log(x), log(y), pch=16, col="blue", xlab="Mean walking velocity", ylab="Population size")
title("Transformed Data")
linearModel = lsfit(log(x), log(y))
loga = linearModel$coefficients[1]#intercept
n = linearModel$coefficients[2]#m, slope
a = exp(loga)
abline(linearModel, col="red")
legend(.82, 12, legend=c("Transformed data", "Model"), col=c("blue", "red"), lty=c(NA, 1),pch=c(16, NA), cex=0.8)


plot(x, y, pch=16, col="blue", xlab="Mean walking velocity", ylab="Population size")
title("Original data set")
model = a * x^n
#lines(model)
curve(a*x^n, 2, 6, lty=6, add=TRUE, col="red")

legend(3, 1000000, legend=c("Data set", "Model"), col=c("blue", "red"), lty=c(NA, 1),pch=c(16, NA), cex=0.8)

