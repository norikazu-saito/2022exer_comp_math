% accuracy: numerics
function [res] = OrderNumer(Solver, odefunc, exact, t0, T, init)
NN=8; hv=[]; errv=[]; kmax=8;
% 
for k=1:kmax
  [t, u] = Solver(odefunc, t0, T, init, NN);
  err = exact(t)-u; errv = [errv; norm(err,inf)];
  hv=[hv; (T-t0)/NN]; NN = 2*NN;
end
% computaion of p
for k=1:kmax-1
  p(k) = (log(errv(k))-log(errv(k+1)))/log(2); 
end
p(kmax)=0;
% results
res=[hv,errv,p'];
end