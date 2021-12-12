clear all

n = 5;
A = zeros(1, n+1);
init = 200;
A(1) = init;
for i = 1:n
    A(i+1) = 1.5 * (100 - A(i));
end

scatter(0:n, A, 'filled')
grid on