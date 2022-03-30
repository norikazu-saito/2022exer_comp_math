% errors of composite rules
function NI_order_plot(a,b,func,rule,Qex,mmin,mmax)
h = zeros(1,mmax-mmin+1)';
err = zeros(1,mmax-mmin+1)';
for m = mmin:mmax
    tmp = abs(Qex - rule(a,b,m,func));
    err(m-mmin+1) = tmp;
    h(m-mmin+1) = (b-a)/m;
end
loglog(h, err,'o-b','LineWidth',2); grid on;
xlabel("h"); ylabel("error"); saveas(1,'NIorder.pdf');
end

