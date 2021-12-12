x = c(0.5, 1, 1.5, 2, 2.5)
y = c(0.7, 3.4, 7.2, 12.4, 20.1)
#Plot tranformed data (lnx, lny)
plot(log(x), log(y), pch=16)
title("Transformed Data")
linearModel = lsfit(log(x), log(y))
loga = linearModel$coefficients[1]#intercept
n = linearModel$coefficients[2]#m, slope
a = exp(loga)
abline(linearModel)
plot(x, y, pch=16, col="blue")
title("Original data set")
model = a * x^n
#lines(model)
curve(a*x^n, 0, 3, add=TRUE, col="red")

#get residuals
predictions = a*x^n
residuals = y - predictions
squareOfResiduals = residuals^2
SSR = sum(squareOfResiduals)
