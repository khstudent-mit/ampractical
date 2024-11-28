

%Method-I : Langrange Interpolation

x = input("enter Xi values ");
y = input("enter Yi values ");

X = input('Enter the value of X');

n = length(x) ;
Y = 0;

for i=1:n
    L = 1;
     for j = 1:n
            if j ~= i
                L = L * (X - x(j)) / (x(i) - x(j));
            end
     end
     Y = Y + y(i) * L;
end

disp('The Y(x) is: ');
disp(Y);