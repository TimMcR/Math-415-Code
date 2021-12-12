clear all

n=20;
An = zeros(1, n+1);
Ak = zeros(1, n+1);

a0 = 64;
An(1) = a0;
Ak(1) = a0;

for i = 1:n
   An(i+1) = (3/4) * An(i);
   Ak(i+1) =  ((3/4)^ i) * 64;
end

scatter(1:n+1, An, 'filled')
grid on
hold on
plot(1:n+1, Ak)
legend('Dynamical system', 'Solution')