clear all
tspan = 0:1:1;
x0 = [1; 3];
[t, x] = ode45('Example3', tspan, x0);
plot(t, x(:,1), 'linewidth', 2)
grid on
xlabel('t')
ylabel('x_1(t)')
title('Solution for x1')
figure
plot(t, x(:,2), 'linewidth', 2)
grid on
xlabel('t')
ylabel('x_2(t)')
title('Solution for x2')