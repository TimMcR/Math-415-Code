clear all

a = 1;
b = 2;
y0 = 1; 
yn = 6;
n = 10;
h = (b - a) / n;

A = zeros(n-1, n-1);
B = zeros(n-1, 1);
p = 3;
q = 2;
t = a:h:b;
f = 4*t.^2;

for i = 1:n-1 
   A(i, i) = -2 + h^2 * q;
   if(i < n-1)
      A(i, i+1) = 1 + h/2 * p; 
   end
   if(i > 1)
       A(i, i-1) = 1 - h/2 * p;
   end
end

B(1) = h^2 * f(2) - (1 - (h/2) * p) * y0;
B(end) = h^2 * f(end-1) - (1 + (h/2) * p) * yn;
for i = 2:n-2
   B(i) = h^2 * f(i+1); 
end
y = inv(A) * B;
sol = [y0; y; yn];
plot(t, sol, 'linewidth', 2)
xlabel('t')
ylabel('y')
grid on
title('DE Solution for Ex 2')