clear all

n = 30; %num days
O = zeros(1, n+1);
H = zeros(1, n+1);
O(1) = 145; %initial owls
H(1) = 205; %initial hawks


for i = 1:n
   O(i+1) = 1.2 * O(i) - 0.001 * O(i) * H(i);
   H(i+1) = 1.3 * H(i) - 0.002 * O(i) * H(i);
end

scatter(0:n, O, 'filled')
grid on
hold on
scatter(0:n, H, 'filled')
xlabel('Number of days')
ylabel('Population')
title('Population of Owls and Hawks')
legend('Owls', 'Hawks')