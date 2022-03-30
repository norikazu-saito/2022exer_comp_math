function [res] = gershgorin2(A)
D = diag(A); center = [real(D),imag(D)];  
radius = sum(abs(A-diag(D)),2);
% draw circles
t = linspace(0,2*pi,100)';
x = kron(ones('like',t)',center(:,1)')+kron(cos(t),radius');
y = kron(ones('like',t)',center(:,2)')+kron(sin(t),radius');
figure(1); plot(x,y,'Color','b'); 
daspect([1 1 1]); grid on; xlabel("Real"); ylabel("Imaginary");
saveas(1,'gers2.pdf');
% 
res=[min(real(D)-radius),max(real(D)+radius),min(imag(D)-radius),max(imag(D)+radius)];
end