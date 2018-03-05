f = @(x) sin(x)/x; h = 1/8;
% Composite trapezoidal rule 
h / 2 * (f(eps) + 2*sum(arrayfun(f, h:h:1-h)) + f(1))
% Composite Simpson's rule
h / 3 * (f(eps) + 4*sum(arrayfun(f, h:2*h:1-h)) + 2*sum(arrayfun(f, 2*h:2*h:1-2*h)) + f(1))
