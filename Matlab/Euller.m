function [y] = Euller(x, y0, h)
%This function solves an ODE(Ordinary Differential Equation) of the form 
%dy/dx = f(x,y)
%Inputs:
%x - vector of x values
%y0 - initial y value
%h - step size

n = length(x);
y = zeros(n, 1);
y(1) = y0;
for i = 1:n-1
    y(i+1) = y(i) + h * 0.2 * x(i) * y(i);
end

end