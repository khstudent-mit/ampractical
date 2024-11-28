% 1. 3D Line Plot
subplot(2, 2, 1);
t = linspace(0, 6*pi, 1000);
x = t .^0.5 .* sin(2*t);
y = t .^0.5 .* cos(2*t);
z = t ./2;
plot3(x, y, z, "LineWidth", 2);
title("3D Line Plot");
xlabel("x-Axis");
ylabel("y-Axis");
zlabel("z-Axis");
grid on

% 2. Mesh Plot
subplot(2, 2, 2);
x = -3:0.5:3;
y = -3:0.5:3;
[x1, y1] = meshgrid(x,y);
z = (x1.*(y1.^2))./((x1.^2)+(y1.^2));
mesh(x1, y1, z);
title("Mesh Plot");
xlabel("x-Axis");
ylabel("y-Axis");
zlabel("z-Axis");
grid on

% 3. 2D Line Plot
subplot(2, 2, 3);
t = linspace(0, 2*pi, 100);
y = sin(t);
plot(t, y, 'r', 'LineWidth', 2);
title("2D Line Plot");
xlabel("t (radians)");
ylabel("sin(t)");
grid on

% 4. 2D Scatter Plot
subplot(2, 2, 4);
x = randn(100, 1);
y = randn(100, 1);
scatter(x, y, 'filled');
title("2D Scatter Plot");
xlabel("x");
ylabel("y");
grid on
