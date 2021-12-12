clear all

p0 = -1;
p1 = 0;

syms x 
f(x) = -x^3 - cos(x);

p2 = p1 - (f(p1) * (p1 - p0)) / (f(p1) - f(p0));

p3 = p2  - (f(p2) * (p2 - p1)) / (f(p2) - f(p1));

vpa(p2)
vpa(p3)