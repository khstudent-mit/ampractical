x = 0:0.01:5;

subplot(3, 1, 1);
f1 = (sin(x)).^2 + 9;
plot(x,f1);
title("f1(x) Plot");
xlabel("X");
ylabel("F1");
grid on;

subplot(3, 1, 2);
f2 = 3*x.^(2) - 2.*x - log(x.^3);
plot(x,f2);
title("f2(x) Plot");
xlabel("X");
ylabel("F2");
grid on;

subplot(3, 1, 3);
f3 = cos(x) + (sin(x)).^2 + 2;
plot(x,f3);
title("f3(x) Plot");
xlabel("X");
ylabel("F3");
grid on;