function [p] = newtonMethod(p)%, f, fprime)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

maxIt = 100; %max iterations
tol = 10^(-8); %tolerance
for i = 1:maxIt
   %p_new = p - f(p)/fprime(p);
   fp = 2*p^3 + p^2 - p + 1;
   fprimep = 6*p^2 + 2*p - 1;
   p_new = p - fp / fprimep;
   %p_new = double(p_new);
   %check for convergence
   if abs(p - p_new) < tol
       p = p_new;
       i
       return %exit function
   end
   p = p_new; %update
end
end