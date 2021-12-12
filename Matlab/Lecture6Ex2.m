clear all

x = [10 30 50 70];
y = [2 3 1.9 2.8];
scatter(x, y, 'filled')
title('Data set')
grid on
figure 
scatter(1./x, log(y), 'filled')
title('Linearized Model')