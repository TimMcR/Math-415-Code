function [xdot] = rungeKuttaMethod(t, x)
xdot(1) = x(2);
xdot(2) = -64.4 * x(1);
xdot = xdot(:);
end