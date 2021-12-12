function [x] = eulerMethod(h, t, x0)
nrows = length(x0);
ncols = length(t);
x = zeros(nrows, ncols);
x(:, 1) = x0;
for i = 1:ncols-1
   %x(1, i+1) = x(1, i) + h*x(2,i);
   %x(2, i+1) = x(2, i) + h*(-64*x(1,i));
   A = [0 1; -64 0];
   x(:,i+1) = x(:, i) + h*A*x(:,i);
end
end