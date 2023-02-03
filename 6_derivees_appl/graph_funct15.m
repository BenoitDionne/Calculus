close all;

x=0:0.01:6;
G= sqrt(x).* exp(-x);
plot(x,G,'b')

hold on
grid on
xlabel('x')
ylabel('G');
title('G(x)= sqrt(x) e^{-x}')

