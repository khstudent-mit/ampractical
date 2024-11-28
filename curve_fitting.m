% Sample data
subplot(2, 1, 1);
x = [1 2 3 4 5 6];
y = [2.3 2.1 1.9 1.6 1.2 1.0];

% Fit a 1st-degree polynomial (linear fit)
p = polyfit(x, y, 1);

% Evaluate the polynomial at the points in x
y_fit = polyval(p, x);

% Plot the data and the fit
plot(x, y, 'o', x, y_fit, '-');
title('Linear Fit');
xlabel('x');
ylabel('y');
grid on;

%%
subplot(2, 1, 2);
% Sample data
x = [1 2 3 4 5 6];
y = [2.3 2.1 1.9 1.6 1.2 1.0];

% Fit an exponential model
f = fit(x', y', 'exp1'); % 'exp1' is an exponential fit

% Plot the data and the fit
plot(f, x, y);
title('Exponential Fit');
xlabel('x');
ylabel('y');
grid on;
