function [xv,fx,inc,k]=newton_multi(fun,dfun,kmax,tol,xig)
% preliminaries
xv=[]; fx=[]; inc=[]; x=xig; k=0; dif=tol+1; 
xv=[xv;x']; f=fun(x); fx=[fx;f']; 
% Newton iteration 
while k<kmax && dif>tol
    df=dfun(x);
    if rcond(df)<1e-15
        error('df/dx is singular');
    end
    xnew=x-df\f; dif=norm(xnew-x,inf); 
    x=xnew; k=k+1; xv=[xv;x']; 
    f=fun(x); fx=[fx;f']; inc=[inc;dif]; 
end
end