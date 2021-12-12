clear all

h = 0.01;
tEnd = 5;
t = 0:h:tEnd;
x0 = [1;2];

x = Euler_Sys(h, t, x0);
y = x(1,:);
plot(t, y, 'linewidth', 2);
grid on
xlabel('t')
ylabel('y')
title('DE Solution with Euler''s Method')