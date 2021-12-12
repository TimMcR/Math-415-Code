clear all
a0 = 80000; %initial value
n = 72; %num of months
a_present = a0;
plot(0, a0)
for i = 1:n
    a_future = 1.01 * a_present - 880.87;
    a_present = a_future;
    plot(i, a_future, 'o')
    hold on
    grid on
end
