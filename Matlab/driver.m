
clear all
x = [8.1 8.3 8.6 8.7]; %data set
y = [16.9441 17.56492 18.50515 18.82091];
Q = dividedDifference(x,y) 
syms xx
n = length(Q);
f(xx) = sym(Q(1,1)) + Q(2,2)*(xx - x(1)) + Q(3,3)*(xx - x(1))*(xx - x(2))...
    + Q(4,4)*(xx - x(1))*(xx - x(2))*(xx - x(3))...
    
figure
scatter(x,y,'filled')
hold on
grid on
fplot(f)
xlim([8 9])
ylim([16 19])
% ylim([-100 100])
grid on