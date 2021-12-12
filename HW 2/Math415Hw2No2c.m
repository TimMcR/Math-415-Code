clear all

n=30;
An = zeros(1, n+1);


E(1:n+1, 1) = 100/1.8; %Equilibrium
plot(1:n+1, E, 'red');
grid on
hold on
for a0 = 1:5
    An(1) = a0;
    for i = 1:n
       An(i+1) = -.8 * An(i) + 100;
    end
    scatter(1:n+1, An, 'filled')
    grid on
    hold on
end
