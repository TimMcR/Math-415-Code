#install.packages("readxl")
library("readxl")
my_data = read_excel("data.xlsx")
t = as.double(unlist(my_data[1]))
s = as.double(unlist(my_data[2]))
plot(t, s, pch=16, col="blue", main="Cubic Spline Interpolation", xlim=c(0, 2), ylim=c(-1, 2))

f = splinefun(t, s, method="natural")
curve(f, add=TRUE, col="red")

legend(1.75, 1.5, legend=c("Data set", "Model"), col=c("blue", "red"), lty=c(NA, 1),pch=c(16, NA), cex=0.8)

pred = 1.45
prediction = f(pred)
prediction

