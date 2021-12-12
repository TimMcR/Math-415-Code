function [y] = Euler(x, y0, h)
%This function solves an ODE(Ordinary Differential Equation) of the form 
%dy/dx = f(x,y)
%Inputs:
%x - vector of x values
%y0 - initial y value
%h - step size

n = length(x);
y = zeros(n, 1);
y(1) = y0;

k = 0.13353;
A = 68;
for i = 1:n-1
    y(i+1) = y(i) + h * (k * (A - y(i)));
end

end