function result = newtonPoly(var, x, d)
% result = p(var)
% x = [x1, x2, ..., xn]
% d = [c1, c2, ..., cn]
	result = 0;
	for i = 1:length(x)
		term = d(i);
		for j = 1:i-1
			term = term * (var - x(j));
		end
		result = result + term;
	end
end