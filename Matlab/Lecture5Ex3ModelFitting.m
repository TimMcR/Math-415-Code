clear all

x = [1 2 3 4];
y = [8.1 22.1 60.1 165];
scatter(x, log(y), 'filled')
grid on
hold on
xlim([0 4])
ylim([0 6])