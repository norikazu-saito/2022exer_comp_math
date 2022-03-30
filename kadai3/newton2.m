% Newton Method--convergence rate
% Exact solution (sol) of equation is assumed to be known 
function [xv,err,yv,zv,k]=newton2(fun,dfun,sol,ig)
% preliminaries
kmax = 50; tol = 1.0e-7; 
xv=[]; err=[]; yv=[]; zv=[];
% Newton iteration
x=ig; k=0; err=[err;abs(x-sol)]; 
yv=[yv;0]; zv=[zv;0]; xv=[xv;x]; 
while k<kmax && err(end)>tol
    f=fun(x); df=dfun(x);
    if abs(df)<1e-15
        disp('df/dx=0'); break; 
    end
    xnew=x-f/df; x=xnew; xv=[xv;x];
    err=[err;abs(x-sol)]; k=k+1; 
    y=err(end)/err(end-1); yv=[yv;y]; 
    z=err(end)/(err(end-1)^2); zv=[zv;z]; 
end
end