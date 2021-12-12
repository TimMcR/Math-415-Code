function [ Q ] = dividedDifference( x , y)
% Input data points x and y
% Output the divided difference table, Q.
n = length(x);
Q = zeros(n,n);

%input the y values into the initial column.
Q(:,1) = y(1:end);

%compute the differences
for i = 2:n
    for j = 2:i
        Q(i,j) = (Q(i,j-1) - Q(i-1,j-1))/(x(i) - x(i-j+1));
    end
end


end

