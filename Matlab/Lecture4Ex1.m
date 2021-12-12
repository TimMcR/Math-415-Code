clear all

a0 = 0.3; %initial value
scatter(0, a0, 'filled')
grid on
hold on

an = a0;
for i = 1:10
    next_a = (0.5 * an) + 0.1;
    scatter(i, next_a, 'filled')
    hold on
    an = next_a;
end