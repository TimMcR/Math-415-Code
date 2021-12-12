#install.packages("readxl")
library("readxl")
#go to session, set working directory to source file location
my_data = read_excel("data.xlsx")
t = as.double(unlist(my_data[1]))
s = as.double(unlist(my_data[2]))
plot(t, s, pch=16, col="blue", main="Smoothed Model", xlim=c(0, 2), ylim=c(-1, 2))

yFit = nls(y ~ a * t^2 + b*t + c, data = my_data, start=list(a=0, b=0, c=0))
params = coef(yFit)
a = params[1]
b = params[2]
c = params[3]

curve(a*x^2 + b*x + c, from =-1, to = 3, add = TRUE, col = "red")

pred = 1.45
prediction = a * pred ^ 2 + b * pred + c

legend(1.75, 1.5, legend=c("Data set", "Model"), col=c("blue", "red"), lty=c(NA, 1),pch=c(16, NA), cex=0.8)
