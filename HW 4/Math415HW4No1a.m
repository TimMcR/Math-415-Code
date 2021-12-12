clear all
data = xlsread('data');
t = data(:, 1);%x
s = data(:, 2);%y

scatter(t, s, 'filled')
grid on
title('Original data set')
xlabel('t')
ylabel('s')