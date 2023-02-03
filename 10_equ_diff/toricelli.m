close all

t=0:0.1:4;
y=(-t+4).^2;
plot(t,y,'b')
grid on
hold on

ylabel('y')
xlabel('t');
title('y = (-t+4)^2')
