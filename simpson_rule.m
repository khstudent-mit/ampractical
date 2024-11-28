% Simpson's 1/3rd rule :
% applicable only if no. of sub-intrevals is even, means n is only odd.

X = input("Enter Xi values as a vector: ");
Y = input("Enter Yi values as a vector: ");

n = length(X);

if mod(n, 2) == 0
    error('Number of subintervals (n) must be odd.');
end

h = (X(end) - X(1)) / (n - 1);
I = Y(1) + Y(end);

for i = 2:2:n-1
    I = I + 4 * Y(i);
end

for i = 3:2:n-2
    I = I + 2 * Y(i);

end

result = (h / 3) * I;

disp(['The integral is approximately: ', num2str(result)]);
