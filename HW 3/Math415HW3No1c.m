clear all

myData = xlsread('HW3');

v = myData(:, 1); %velocity
p = myData(:, 2); %population

%Plot transformed data
scatter(v, log(p), 'filled')
xlabel('Mean walking velocity')
ylabel('Population size')
title('Transformed Data')

grid on 

figure

scatter(v, p, 'filled')
xlim([2 6])
xlabel('Mean walking velocity')
ylabel('Population size')
title('Average walking velocity of a population')

grid on
hold on

syms x
model = 403.429 * exp(x);
fplot(model)

legend('Data set', 'Model')