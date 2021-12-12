#install.packages("readxl")
library("readxl")
my_data = read_excel("data.xlsx")
t = as.double(unlist(my_data[1]))
s = as.double(unlist(my_data[2]))
plot(t, s, pch=16, col="blue", main="Data Set", xlim=c(0, 2), ylim=c(-1, 2))

