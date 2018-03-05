function d = coefficients(x, d)
% x = [x1 x2 ... xn]
% d = [c1 c2 ... cn]
	n = length(x);
	for j = 2:n
		for i = n:-1:j
			d(i) = (d(i) - d(i-1)) / (x(i) - x(i-j+1));
		end
	end
end
