clear all
my_data = xlsread('data');
n = my_data(:, 1);
p = my_data(:, 2);

scatter(n, p, 'filled')
grid on
xlabel('n, Time in Hours')
ylabel('p_n, Yeast Population')
title('Yeast Population')

figure

change = diff(p);
scatter((665-p(1:end-1)).*p(1:end-1), change, 'filled')
grid on
xlabel('p_n, Yeast Population')
ylabel('Change in biomass, p_{n+1} - p_n')
title('Change in biomass vs. biomass')

ax = gca;
ax.XRuler.Exponent = 0;