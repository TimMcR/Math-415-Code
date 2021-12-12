x = c(.5, 1, 1.5, 2, 2.5)
y = c(.7, 3.4, 7.2, 12.4, 20.1)
plot(x, y, pch=16, col="purple") #pch = plot character
title("Nonlinear Least Squares")
myData = data.frame(x, y) #creates a data frame
#generates a model with an initial guess of 0
yFit = nls(y ~ a*x^n, data = myData, start = list(a = 1, n = 1))
#printing attributes of our model
yFit
#get coefficient
coefficients = coef(yFit)
a = coefficients[1]
n = coefficients[2]
fittedValues = a*x^n
lines(x, predict(yFit), col="red")
#plot and view residuals
res = residuals(yFit)
res
plot(res)
#abs deviation
absDev = abs(res)
maxAbsDev = max(absDev)
#sum of square of residuals
SSR = sum(res^2)
SSR

