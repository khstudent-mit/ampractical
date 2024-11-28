syms t s Y; 


eqn = s^2*Y - s*0 - 1 + 3*(s*Y - 0) + 2*Y == 0;

% Solve for Y 
Y_s = solve(eqn, Y);


y_t = ilaplace(Y_s, s, t);

disp('Solution to the differential equation y(t):')
disp(y_t)
