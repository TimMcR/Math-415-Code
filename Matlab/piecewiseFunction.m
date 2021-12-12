clear all

h = 0.1;
L = 6;
x = 0:h:L;
syms xx
%create f(x)
f(xx) = piecewise(1 < xx < 3, 2 - 2 * abs(xx - 2));
init_pos = zeros(length(x), 1);
init_pos = double(f(x));
plot(x, init_pos);