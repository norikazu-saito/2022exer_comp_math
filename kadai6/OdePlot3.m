% phase diagram for 2d case 
function OdePlot3(Solver, odefunc, t0, T, num, N)
figure(3); hold on; len=1.0;  
for i=1:num
    init=[len*rand(),len*rand()]; 
    [t, u] = Solver(odefunc, t0, T, init, N); 
    plot(u(:,1),u(:,2)); 
end
xlabel('u1'); ylabel('u2'); saveas(3,'OdePlot3.pdf');
end