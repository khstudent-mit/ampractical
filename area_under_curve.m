% Numerical methods(Integration)

X = input("enter Xi values ");
Y = input("enter Yi values ");

n = length(X);

h = X(2)-X(1);
I = 0 ;

for i=2:(n-1)
    I=I+(2*Y(i));
end
I=I + Y(1) + Y(n);
disp((h/2)*I);