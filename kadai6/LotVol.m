% Lotka-Volterra system 
function [fn] = LotVol(t, y)
    c1=1; c2=1; d1=1; d2=1; b1=0; b2=0;
    [n,m] = size(y); fn = zeros(n, m);
    fn(1) = c1*y(1)*(1-b1*y(1)-d2*y(2));
    fn(2) = -c2*y(2)*(1-b2*y(2)-d1*y(1));
end