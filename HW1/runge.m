domain = -5:0.01:5;
fa = @(x) 1./(1 + x.^2); fb = @(x) exp(-x.^2);
figure
plot(domain,fa(domain),'-',domain,interp(domain,6,'a'),'--',domain,interp(domain,11,'a'),':',domain,interp(domain,16,'a'),'-.','LineWidth',2)
legend('1/(1+x^2)','p_{5}(x)','p_{10}(x)','p_{15}(x)')
figure
plot(domain,fb(domain),'-',domain,interp(domain,6,'b'),'--',domain,interp(domain,11,'b'),':',domain,interp(domain,16,'b'),'-.','LineWidth',2)
legend('e^{-x^2}','p_{5}(x)','p_{10}(x)','p_{15}(x)')

t = linspace(-5,5,30);
fas = sum(fa(t)); fbs = sum(fb(t));
fprintf("E_p5a = %f\nE_p10a = %f\nE_p15a = %f\nE_p5b = %f\nE_p10b = %f\nE_p15b = %f\n",...
	fas - sum(interp(t,6,'a')), fas - sum(interp(t,11,'a')), fas - sum(interp(t,16,'a')),...
	fbs - sum(interp(t,6,'b')), fbs - sum(interp(t,11,'b')), fbs - sum(interp(t,16,'b')));
