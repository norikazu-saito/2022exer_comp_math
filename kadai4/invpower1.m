function [ev, evec] = invpower1(A, init, alpha, tol)
kmax=100; ev = []; evec = []; 
B = A - alpha*eye(size(A)); 
k=0; x = init / norm(init); muold = 0; inc = tol+1;   
while (k<=kmax && inc >= tol)
    y = B\x; mu=dot(y, x); inc=abs((mu-muold)/mu); 
    ev=[ev;k,1/mu+alpha,inc]; evec=[evec; x']; 
    x=y/norm(y); muold = mu; k=k+1; 
end
end 