#install.packages("readxl")
library("readxl")
#go to session, set working directory to source file location
my_data = read_excel("data.xlsx")
x = as.double(unlist(my_data[1]))
y = as.double(unlist(my_data[2]))
plot(x, y, pch=16, col="blue", main="Smoothed Model", xlim=c(0, 100), ylim=c(0, 800))

yFit = nls(y ~ a * x^2 + b*x + c, data = my_data, start=list(a=0, b=0, c=0))
params = coef(yFit)
a = params[1]
b = params[2]
c = params[3]
#Get residuals
res = residuals(yFit)
maxDev = max(res)

curve(a*x^2 + b*x + c, from = 0, to = 100, add = TRUE, col = "red")

pred = 45
prediction = a * pred ^ 2 + b * pred + c