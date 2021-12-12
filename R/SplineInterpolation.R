x = c(1, 2, 3)
y = c(5, 8, 25)
plot(x, y, pch=16, col="blue")
#Linear Inerpolation
f_lin = approxfun(x, y, method="linear")
curve(f_lin, add=TRUE, col="red")
#predictions
f_lin(1.67)
f_lin(2.33)
#Cubic inerpolation'
f = splinefun(x, y, method="natural")
curve(f, add=TRUE, col="purple")
f(1.67)
f(2.33)
title('Spline Interpolation')
legend(x="topleft", inset=0.05, c("Data points", "Linear splines", "Cubic splines"), col=c("blue", "red", "purple"), lty = c(3, 1, 1))
