% composite trapezoidal rule
function integ = c_trape(a,b,m,func)
x = linspace(a,b,m+1)'; h = diff(x);
yl = func(x(1:end-1)); yr = func(x(2:end)); 
integ = dot(yl + yr, h)/2;
end
