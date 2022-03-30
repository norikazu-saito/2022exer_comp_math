function [J]=dfunc35(x)
J = zeros(2,2); pi2 = 0.5*pi;
J(1,1) = 2*x(1); J(1,2) = 2*x(2);
J(2,1) = pi2*cos(pi2*x(1)); J(2,2) = 3*x(2)^2;
end