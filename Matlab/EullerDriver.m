clear all

x0 = 1;
y0 = 1;
h = 0.1;
xend = 1.5; %stop 
x = x0:h:xend;

[y] = Euller(x, y0, h);
plot(x,y, 'linewidth', 2);
xlabel('x');
ylabel('y');
title('Solution Curve');
grid on

%Now calling the Runge Kutta Method
%[x_pts, y_pts] = ode(ODE function, xVals, initial)
[x_RK, y_RK] = ode45(@(xx,yy) 0.2*xx*yy, x, y0)
hold on
plot(x_RK, y_RK, '--', 'linewidth', 2);