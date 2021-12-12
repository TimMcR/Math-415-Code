clear all

n=20;
An = zeros(1, n+1);
Ak = zeros(1, n+1);

a0 = 1.3;
An(1) = a0;
Ak(1) = a0;

b = 3.2 / .9;

for i = 1:n
   An(i+1) = .1 * An(i) + 3.2;
   Ak(i+1) =  (.1 ^ Ak(i)) * (1.3 - b) + b;
end

scatter(1:n+1, An, 'filled')
grid on
hold on
plot(1:n+1, Ak)
legend('Dynamical system', 'Solution')