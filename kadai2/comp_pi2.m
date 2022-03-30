function res = comp_pi2
p=6; q=4*sqrt(3); n=6; diff=q-p; res=[];  
while diff > 1e-10
    q=2*p*q/(p+q); p=sqrt(p*q); diff=q-p;  
    n = 2*n;
    res = [res;n,p/2,p/2-pi]; 
end
end 