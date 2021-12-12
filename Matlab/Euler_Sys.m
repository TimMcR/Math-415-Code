function [x] = Euler_Sys(h, t, x0)
nrows = length(x0);
ncols = length(t);
x = zeros(nrows, ncols);
x(:, 1) = x0;
for i = 1:ncols-1
   %x(1, i+1) = x(1, i) + h*x(2,i);
   %x(2, i+1) = x(2, i) + h*(-x(1,i)-t(i)*x(2,1));
   A = [0 1; -1 -t(i)];
   x(:,i+1) = x(:, i) + h*A*x(:,i);
end
end