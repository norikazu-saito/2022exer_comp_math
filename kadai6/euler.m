% Euler method
function [t, u]=euler(odefunc, t0, T, init, N)
% time increment and initial value
h = (T-t0)/N; t=[t0]; w = init;
% solution vectors
u=[]; u=[u;w];
% iteration
time = t0; 
for i=1:N 
   w = w + h*odefunc(time,w);    
   time = t0 + i*h; u = [u; w]; t = [t; time];
end
end