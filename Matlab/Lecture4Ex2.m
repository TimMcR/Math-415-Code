clear all

O(1) = 2000; %initial num in Orlando
T(1) = 5000; %initial num in Tampa

n = 10; %num of days

for i = 1:n
   O(i+1) = 0.6 * O(i) + 0.3 * T(i);
   T(i+1) = 0.7 * T(i) + 0.4 * O(i);

end

scatter(0:n, O, 'filled');
hold on
scatter(0:n, T, 'filled');