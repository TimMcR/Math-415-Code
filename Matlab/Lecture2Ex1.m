clear all
n = 0:7; %time
p = [9.6 18.3 29 47.2 71.1 119.1 174.6 257.3]; %population

scatter(n, p, 'filled')
grid on
xlabel('n, Time in Hours')
ylabel('p_n, Yeast Population')
title('Yeast Population')

figure

change = diff(p);
scatter(p(1:end-1), change, 'filled')
grid on
xlabel('p_n, Yeast Population')
ylabel('Change in biomass, p_{n+1} - p_n')
title('Change in biomass vs. biomass')