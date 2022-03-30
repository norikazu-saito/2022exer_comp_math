% composite Simpson rule 
function integ = c_simps(a,b,m,func)
x = linspace(a,b,m+1)'; h = diff(x);
yl = func(x(1:end-1)); yr = func(x(2:end));
xc = (x(1:end-1)+ x(2:end))/2; yc = func(xc);  
integ = dot(yl+4*yc+yr,h)/6;
end