clear all

x0 = 0; %time of death
y0 = 98.6; %Initial body temp. at time of death
h = .1; %step size
xend = 20; %total hours after death
x = x0:h:xend;

[y] = Euler(x, y0, h);
plot(x,y, 'linewidth', 2);
xlabel('Hours after death');
ylabel('Temperature(Farenheit)');
ylim([80, 98.6]);
title('Temperature After Death(Euler Model)');
grid on
figure()

%Now calling the Runge Kutta Method
k = 0.13353;
A = 68;
[x_RK, y_RK] = ode45(@(xx, yy) k*(A-yy), x, y0);

plot(x_RK, y_RK, 'linewidth', 2);
xlabel('Hours after death');
ylabel('Temperature(Farenheit)');
ylim([80, 98.6]);
title('Temperature After Death(RK4 Model)');
grid on