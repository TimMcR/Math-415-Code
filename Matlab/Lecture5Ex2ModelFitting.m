clear all

x = [1 2 3 4];
y = [8.1 22.1 60.1 165];
scatter(x, y, 'filled')
grid on
hold on
syms xx
model = 3 * exp(xx);
fplot(model)
xlim([0 5])
legend('Data', 'Model')
xlabel('x')
ylabel('y')