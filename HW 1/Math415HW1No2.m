clear all

n = 11;
A = zeros(1, n+1);
A(1) = 500;
for i = 1:n
    A(i+1) = 1.015 * A(i) - 50;
end

scatter(0:n, A, 'filled')
grid on
xlabel('Number of months passed')
ylabel('Amount of money left to pay')
title('Monthly interest payment for credit card')
xlim([0 11])