function [xv,fx,inc,k] = newton_plot2D(fun,dfun,xig)
% implementation of Newton iteration
kmax = 100; tol = 1.0e-15;
[xv,fx,inc,k] = newton_multi(fun,dfun,kmax,tol,xig);
% drawing results
xvv=circshift(xv,-1); xvv(end,:)=xv(end,:); figure(1); hold on;
quiver(xv(:,1),xv(:,2), xvv(:,1)-xv(:,1), xvv(:,2)-xv(:,2), 0,'b','LineWidth',3,'MaxHeadSize',0.1);
% initial point
plot(xig(1), xig(2),'o','MarkerEdgeColor','b','MarkerFaceColor','b','MarkerSize',10); 
% final point
plot(xv(end,1), xv(end,2),'h','MarkerEdgeColor','r','MarkerFaceColor','r','MarkerSize',10); 
% decoration
grid on;axis equal;xlabel("x"); ylabel("y");
saveas(1,'newton_plot2D.pdf');
end