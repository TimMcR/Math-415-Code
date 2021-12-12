function [xdot] = Example3(t, x)
xdot(1) = 2*x(1)-2*x(1)*x(2);
xdot(2) = x(1)*x(2) - x(2);
xdot = xdot(:);
end

