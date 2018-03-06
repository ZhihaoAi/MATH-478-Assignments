f = @(x) x^2-1;
g = @(x) 2*x;
x0 = 10^(10);
xn = x0 - f(x0)/g(x0);
i = 1;
fprintf('%.32f %.32f %d\n', x0, xn, i);

while xn > 1 + 10^-8
	x0 = xn;
	xn = x0 - f(x0)/g(x0);
	i = i + 1;
	fprintf('%.32f %.32f %d\n', x0, xn, i)
end

% n=1;
% % while 1/(2^(n - 1))*(10^10 - 1) - 1/(2^n)*(10^10 - 1) > 1
% while (1/(2^(n))*(10^10 - 1) + 1) > (1 + 10^-8)
% 	fprintf('%.9f\n', 1/(2^(n - 1))*(10^10 - 1) + 1)
% 	n=n+1;
% end
% disp(n);
% fprintf('%.9f\n', 1/(2^(n))*(10^10 - 1) + 1)