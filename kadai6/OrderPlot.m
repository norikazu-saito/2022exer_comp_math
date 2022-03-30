% accuracy: log-log plot of errors
function [res] = OrderPlot(Solver, odefunc, exact, t0, T, init)
NN=4; kmax=8; hv=[]; err1=[]; 
% 
for k=1:kmax
  [t, u] = Solver(odefunc, t0, T, init, NN);
  err = exact(t)-u; err1 = [err1; norm(err,inf)];
  hv=[hv; (T-t0)/NN]; NN = 2*NN;
end
% log-log plot
loglog(hv, err1,'b-o','LineWidth',2); xlabel('h'); 
ylabel('error'); grid on; saveas(1,'OrderPlot.pdf');
% results
res=[hv,err1];
end