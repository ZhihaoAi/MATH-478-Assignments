function result = interp(domain, nx, mode)
	fa = @(x) 1./(1 + x.^2); fb = @(x) exp(-x.^2);
	x = linspace(-5,5,nx);
	if mode == 'a'
		d = fa(x);
	else
		d = fb(x);
	end
	d = coefficients(x, d);
	result = domain;
	n = length(domain);
	for i = 1:n
		result(i) = newtonPoly(domain(i), x, d);
	end
end