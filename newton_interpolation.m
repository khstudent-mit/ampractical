%Newton's forward/backword difference interpolation method

%% 

x = input("Enter Xi values: ");
y = input("Enter Yi values: ");

n = length(y);

X = input('Enter the value of X: ');
h = x(2) - x(1);

if (X - x(1)) <= (x(n) - X)

     % Forward difference
    disp('Using Forward Difference Interpolation');
    
    D = zeros(n);
    for i = 1:n
        D(i, 1) = y(i);
    end
    
    for j = 2:n
        for i = 1:n-j+1
            D(i, j) = D(i+1, j-1) - D(i, j-1);
        end
    end
    
    disp('Forward Difference Matrix:');
    disp(D);
    
    Y = D(1, 1);  
    product = 1;
    fact = 1;
    
    for i = 1:n-1
        product = product * ((X - x(i)) / h);
        fact = fact * (1 / i);
        Y = Y + product * fact * D(1, i+1);
    end
    
else
    
    % Backward differenc
    disp('Using Backward Difference Interpolation');
    
    D = zeros(n);
    for i = 1:n
        D(i, 1) = y(i);
    end
    
    for j = 2:n
        for i = n:-1:j
            D(i, j) = D(i, j-1) - D(i-1, j-1);
        end
    end
    
    disp('Backward Difference Matrix:');
    disp(D);
    
    Y = D(n, 1);  
    product = 1;
    fact = 1;
    
    for i = 1:n-1
        product = product * ((X - x(n-i)) / h);
        fact = fact * (1 / i);
        Y = Y + product * fact * D(n, i+1);
    end
end

disp('Interpolated Value at X:');
disp(Y);
