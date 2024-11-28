syms t s;

f = exp(-2*t); 

% Laplace transform of f(t)
F_s = laplace(f, t, s);

disp('Laplace Transform of f(t):')
disp(F_s)
