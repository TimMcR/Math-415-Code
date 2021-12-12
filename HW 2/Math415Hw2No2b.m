clear all

n=20;
An = zeros(1, n+1);


for a0 = 1:5
    An(1) = a0;
    for i = 1:n
       An(i+1) = An(i);
    end
    scatter(1:n+1, An, 'filled')
    grid on
    hold on
end
