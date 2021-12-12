clear all
%This solves the heat equation using finite differences
h = 0.1; %h step
k0 = 1; %parameter
k = 0.0005; %time step
L = 1; %length of rod
tend = 0.5; %stopping time value
lamda = k0 * k / h^2;
t = 0:k:tend;
x = 0:h:L;
m = length(x);
n = length(t);
A = zeros(m-2, m-2);
%initial value. initializes solution u
u = zeros(m, n);
u(:, 1) = sin(pi * x);

for i = 1:length(A)
    A(i,i) = 1 - 2 * lamda;
    if i > 1 
        A(i, i-1) = lamda;
    end
    if i < length(A)
       A(i, i+1) = lamda; 
    end
end

%iterate to solve for u
for j = 2:n
    u(2:m-1 , j) = A * u(2:m-1 , j-1);
end

%plot at tend and compare to exact solution
plot(x, u(:, end));
hold on
grid on
plot(x, exp(-pi^2 * tend) * sin(pi * x));

%generate a 3d plot
figure

mesh(x, t, u')
xlabel('x')
ylabel('t')
zlabel('u')
title('Solution')
set(gca, 'fontsize', 12)

%create animation
figure

v = VideoWriter('Solution.avi')
v.FrameRate = 10;
open(v)
for i = 1:n
   plot(x, u(:, i), 'linewidth', 2) 
   grid on
   ylim([0 1])
   xlabel('x')
   ylabel('t')
   title('Solution')
   FFF(i) = getframe(gcf)
   writeVideo(v, FFF(i));
end
close(v);