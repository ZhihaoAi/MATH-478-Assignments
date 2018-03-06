f = @(x) x - 2^-1074;
a = 0; b = 1; i = 0;
while sign(f(a)) ~= sign(f(b))
	t = (a+b)/2;
	% if (i == 60)
	% 	break;
	% end
	if sign(f(t)) == 0
		i=i+1;
		break;
	end
	if sign(f(t)) == sign(f(a))
		a = t;
	else
		b = t;
	end
	i=i+1;
	fprintf('% .54f % .54f %d\n', a, b, i);
	% fprintf('% .54f % .54f\n', f(a), f(b), i);
end
disp(i);