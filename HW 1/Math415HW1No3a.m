clear all

n = 30;
A = zeros(1, n+1);
A(1) = 500;

for i = 1:n
    A(i+1) = (2/3) * A(i);
end

scatter(0:n, A, 'filled')
xlabel('Number of days passed')
ylabel('Amount of Cipro in the blood')
title('Amount of Cipro filtered out')