clear all

x = [1 2.3 3.7 4.2 6.1 7];
y = [3.6 3 3.2 5.1 5.3 6.8];
scatter(x, y, 'filled')

m = length(y);

a = (m * sum(x.*y) - sum(x)*sum(y)) / (m*sum(x.^2) - (sum(x))^2)

b = (sum(x.^2) * sum(y) - sum(x.*y)*sum(x)) / (m * sum(x.^2) - (sum(x))^2)

grid on
hold on

syms xx
model(xx) = a*xx + b;
fplot(model)