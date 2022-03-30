function res = comp_pi1
sig = 1/2; p = 6; n = 6; res=[];  
while sig > 1e-10
    sig = sqrt((1 - sqrt(1 - sig*sig))/2);
    p = 4*n*sig;
    n = 2*n;
    res = [res;n,p,p/2-pi]; 
end
end 