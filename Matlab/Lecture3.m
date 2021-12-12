clear all
a0 = 0.1;
n = 20; %number of iterations
model = zeros(1, n)
model(1) = a0;
for i = 1:n-1
    model(i+1) = 0.5 * model(i) + 0.1
end

scatter(1:n, model, 'filled')