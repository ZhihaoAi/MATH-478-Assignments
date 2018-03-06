x0 = 1.5; i = 0; xn = x0;
fprintf('%d & %.8f\\\\\n', i, xn);

while abs(xn - 7^(1/5)) > 10^-8
	x0 = xn;
	xn = 4/5*x0 + 7/5/(x0^4);
	i = i + 1;
	fprintf('%d & %.8f\\\\\n', i, xn);
end
