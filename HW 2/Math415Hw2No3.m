clear all

n=360;
An = zeros(1, n+1);
Ak = zeros(1, n+1);
a0 = 100000;


An(1) = a0;
Ak(1) = a0;

p = 599.55;
c = -19910.105;
for i = 1:n
   An(i+1) = 1.005 * An(i) - 599.55; %dynamical system
   Ak(i+1) = (1.005 ^ i) * c + 200 * p; %solution
end
An(n+1)
plot(1:n+1, An)
grid on
hold on
%plot(1:n+1, Ak)