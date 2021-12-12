clear all

myData = xlsread('HW3');

v = myData(:, 1); %velocity
p = myData(:, 2); %population

scatter(v, p, 'filled')
xlabel('Mean walking velocity')
ylabel('Population size')
title('Average walking velocity of a population')