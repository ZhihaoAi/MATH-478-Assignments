f = @(t,y) -100*(y-cos(t))-sin(t);
t0 = 0; y0 = 1; ns = [5 10 20 50 100 200 500];
for n = ns
	fprintf('%.3f & %f & %f\\\\\n', 1/n, AB2(t0,y0,y0+1/n*f(t0,y0),f,n), BDF2(t0,y0,y0+1/n*f(t0,y0),n));
end

function res = AB2(t0,y0,y1,f,N)
	h = 1/N;
	ys = zeros(1,N+1); ts = linspace(t0,t0+N*h,N+1);
	ys(1) = y0; ys(2) = y1;
	for n=1:N-1
	   f1 = f(ts(n),ys(n)); f2 = f(ts(n+1),ys(n+1));
	   ys(n+2) = ys(n+1) + h/2*(3*f2-f1);
	end
	res = ys(N+1);
end

function res = BDF2(t0,y0,y1,N)
	h = 1/N;
	ys = zeros(1,N+1); ts = linspace(t0,t0+N*h,N+1);
	ys(1) = y0; ys(2) = y1;
	for n=1:N-1
	   ys(n+2) = (-ys(n)+4*ys(n+1)+200*h*cos(ts(n+2))-2*h*sin(ts(n+2)))/(3+200*h);
	end
	res = ys(N+1);
end
