% Define values
theta = linspace(0, 4*pi, 400);  
r = 1 + 0.5 * sin(4*theta);      
z = linspace(0, 10, 400);        

% Parametric equations for x and y
x = r .* cos(theta);  
y = r .* sin(theta);

% Plot the parametric curve
plot3(x, y, z, 'Color', [0.1, 0.6, 0.9], 'LineWidth', 2);

% Define labels
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('3D Spiral in Cylindrical Coordinates');


grid on;
box on;
