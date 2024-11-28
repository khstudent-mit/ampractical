x = 0:0.01:5; 

f1 = (sin(x)).^2 + 9;
f2 = 3*x.^(2) - 2.*x - log(x.^3);
f3 = cos(x) + (sin(x)).^2 + 2; 

subplot(3, 1, 1);
yyaxis left; 
plot(x, f1, 'b'); 
ylabel('F1'); 
yyaxis right; 
plot(x, f2, 'r'); 
ylabel('F2'); 
title('f1(x) and f2(x) Plot'); 
xlabel('X');
grid on; 

subplot(3, 1, 2);
yyaxis left; 
plot(x, f1, 'b'); 
ylabel('F1'); 
yyaxis right; 
plot(x, f3, 'r'); 
ylabel('F3'); 
title('f1(x) and f3(x) Plot'); 
xlabel('X');
grid on;

subplot(3, 1, 3);
yyaxis left; 
plot(x, f2, 'b'); 
ylabel('F2'); 
yyaxis right; 
plot(x, f3, 'r'); 
ylabel('F3'); 
title('f2(x) and f3(x) Plot'); 
xlabel('X');
grid on;
