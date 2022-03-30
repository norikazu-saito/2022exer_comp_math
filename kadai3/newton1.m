% Newton Method
function [xv,fx,inc,k]=newton1(fun,dfun,kmax,tol,ig)
% vectors
xv=[]; fx=[]; inc=[];
% initial settings  
x=ig; k=0; dif=tol+1; inc=[inc;0];
xv=[xv;x]; f=fun(x); fx=[fx;f];
% Newton iteration 
while k<kmax && dif>tol
   df=dfun(x);
   if abs(df)<1.0e-15 
       disp('df/dx=0'); break;
   end 
   xnew=x-f/df; dif=abs(xnew-x); x=xnew; k=k+1;
   xv=[xv;x]; f=fun(x); fx=[fx;f]; inc=[inc;dif]; 
end
end