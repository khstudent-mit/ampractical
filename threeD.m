% define values
t = linspace(-10*pi,10*pi,600);
x = t.*cos(t);
y = t.*sin(t);
z = t;

%plot defined

plot3(x, y, z, 'Color', [1, 0.50, 0.4]);


%define lable
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('3D Plot');
