% convergence rate of composite rules
function [vh, verr, order] = NI_order(a,b,func,rule,Qex,m)
err1 = abs(Qex - rule(a,b,m,func));
err2 = abs(Qex - rule(a,b,2*m,func));
vh=[(b-a)/m;(b-a)/(2*m)]; verr=[err1;err2];
order = (log(err1) - log(err2))/log(2);
end

