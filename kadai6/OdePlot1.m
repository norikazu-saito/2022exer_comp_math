% 2d visualization
function OdePlot1(Solver, odefunc, t0, T, init, N)
[t, u] = Solver(odefunc, t0, T, init, N);
plot(t, u, 'LineWidth',2); 
xlabel('t'); ylabel('u'); saveas(1,'OdePlot1.pdf');
end