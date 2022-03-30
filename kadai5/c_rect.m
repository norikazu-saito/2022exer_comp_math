% composite rectangle rule
function integ = c_rect(a,b,m,func)
x = linspace(a,b,m+1)';        % sample points
xc = (x(1:end-1)+ x(2:end))/2; % midpoints
y = func(xc); h = diff(x);                    
integ = dot(y,h);
end
