x = [1885 1917 1919 1932 1958 1963 1968 1971 1974 1978 1981.25 1981.83 1985 1988 1991 1995 1999 2001];
y = [2 3 2 3 4 5 6 8 10 15 18 20 22 25 29 32 33 34];
d = coefficients(x, y);

disp('Coefficients:');
for i = 1:n
	fprintf("% .8e\n", d(i));
end

flag = 0;
for i = 2001:1/365:2002
	cost = newtonPoly(i, x, d);
	if cost >= 100
		if cost >= 1000
			fprintf("Cost $10 in %f\n", i);
			break;
		elseif flag == 0
			flag = 1;
			fprintf("Cost $1 in %f\n", i);
		end
	end
end
