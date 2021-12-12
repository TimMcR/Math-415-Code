clear all
data = xlsread('data');
t = data(:, 1);%x
s = data(:, 2);%y

scatter(t, s, 'filled')
grid on
hold on
title('Lagrange Polynomial')
xlabel('t')
ylabel('s')

D = divDiff(t, s);
coefs = diag(D);
syms x
P(x) = sym(coefs(1));
stuff = sym(1);
for i = 2:length(t)
    stuff = stuff * (x-t(i-1));
    P(x) = P(x) + coefs(i)*stuff;
end
fplot(P, [t(1), t(end)])
prediction = vpa(P(1.45))