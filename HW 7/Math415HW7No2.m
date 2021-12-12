clear all

h = 0.01;
tEnd = 5;
t = 0:h:tEnd;
x0 = [2/3;-4/3];

eulerX = eulerMethod(h, t, x0);
y = eulerX(1,:);
plot(t, y, 'linewidth', 2);
grid on
xlabel('Time(seconds)')
ylabel('Position(feet)')
title('Equation of motion x(t) of mass on spring')
hold on

[t, rkX] = ode45('rungeKuttaMethod', t, x0);
plot(t, rkX(:, 1), 'linewidth', 2, 'linestyle', '--');
legend('Euler Method', 'RK4 Method')