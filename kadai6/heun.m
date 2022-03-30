% Heun method
function [t, u] = heun(odefunc, t0, T, init, N)
% time increment and initial value
h = (T-t0)/N; t=[t0];  w = init;
% solution vectors
u=[]; u=[u;w];
% iteration
time = t0; 
for i=1:N 
   k1=odefunc(time,w); k2=odefunc(time+h,w+h*k1);
   w = w + h*(k1+k2)/2; time = t0 + i*h;   
   u = [u; w]; t = [t;time];
end
end