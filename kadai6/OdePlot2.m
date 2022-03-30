% phase diagram for 2d case 
function OdePlot2(Solver, odefunc, t0, T, init, N)
[t, u] = Solver(odefunc, t0, T, init, N);
plot(u(:,1),u(:,2)); xlabel('u1'); ylabel('u2');
saveas(1,'OdePlot2.pdf');
end