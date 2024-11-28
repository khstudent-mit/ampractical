syms x y

f(x,y) = input ("enter the function f(x,y): ");
x1 = input("enter the value of x1: ");
y1 = input("enter the value of y1: ");
h = input("enter step size: ");
X = input("enter the value of X");

x = x1:h:X ;
y = y1 ; 
n = length(x)-1 ;

for i = 2:n+1 
    y(i) = y(i-1) + h * f(x(i-1),y(i-1));
end

disp (y(n+1)) ;
