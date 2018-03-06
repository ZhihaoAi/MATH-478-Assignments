ns = [10 20 40]; d1 = @(t,y) 1+(y-t)^2; d2 = @(t,y) 2*y*d1(t,y) - 2*t*d1(t,y) - 2*y + 2*t; as = @(t) t+1/(2-t);
for n = ns
	h = 1/n; y = 1/2;
	for t = 0:h:1-h
		dy1 = d1(t,y);
		dy2 = d2(t,y);
		y = y + h*dy1 + h^2/2*dy2;
		fprintf('%.3f & %f & %f & %f\\\\\n', h, y, as(t+h)-y, (as(t+h)-y)/(h^2));
	end
end
