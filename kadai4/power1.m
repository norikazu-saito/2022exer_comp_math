function [ev, evec] = power1(A, init, tol)
kmax=100; ev = []; evec = []; 
k=0; x = init / norm(init); muold = 0; inc = tol+1;   
while (k<=kmax && inc >= tol)
    y=A*x; mu=dot(y, x); inc=abs((mu-muold)/mu); 
    ev=[ev;k,mu,inc]; evec=[evec; x']; x=y/norm(y); 
    muold=mu; k=k+1; 
end
end 