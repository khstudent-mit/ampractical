syms x y

f(x,y) = input ("enter the function f(x,y): ");
x1 = input("enter the value of x1: ");
y1 = input("enter the value of y1: ");
h = input("enter step size: ");
X = input("enter the value of X");

x = x1:h:X ;
y = y1 ; 
n = length(x)-1 ;

for r =2:n+1
    k1 = h * f(x(r-1),y(r-1));
    k2 = h * f(x(r-1)+h/2,y(r-1)+k1/2);
    k3 = h * f(x(r-1)+h/2,y(r-1)+k2/2);
    k4 = h * f(x(r-1)+h,y(r-1)+k3);

    y(r) = y(r-1) +(1/6)*(k1+2*k2+2*k3+k4);
end

disp (y(n+1));


