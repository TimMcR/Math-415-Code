x = c(1, 2.3, 3.7, 4.2, 6.1, 7);
y = c(3.6, 3, 3.2, 5.1, 5.3, 6.8);
plot(x, y, pch=16, col="blue") #pch = plot character
title("Linear Least Squares Fit")
yFit = lsfit(x, y)
attributes(yFit)
#Extracting Coefficients
a <- yFit$coefficients[1]
b <- yFit$coefficients[2]
res <- yFit$residuals #Get residuals
res
abline(yFit, col="red")
plot(residuals(yFit))
absDev = max(abs(res))
absDev #absolute deviation