ns = [10 20 40]; de = @(t,y) 1+(y-t)^2; as = @(t) t+1/(2-t);
for n = ns
	h = 1/n; y = 1/2;
	for t = 0:h:1-h
		y = y + h*de(t,y);
		fprintf('%.3f & %f & %f & %f\\\\\n', h, y, as(t+h)-y, (as(t+h)-y)/h);
	end
end
