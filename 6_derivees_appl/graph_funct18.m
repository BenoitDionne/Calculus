clf

t=0:0.01:4*pi;
y= sin(t).*exp(-t);
subplot(2,2,1:2)
plot(t,y,'b')

hold on
grid on
xlabel('t')
ylabel('y');
title('y = sin(t)e^{-t}')

% x axis
t=linspace(0,14,2);
y=0*t;
plot(t,y,'k')

subplot(2,2,3)
t=3:0.01:2*pi;
y= sin(t).*exp(-t);
plot(t,y,'b')

hold on
grid on
xlabel('t')
ylabel('y');
title('y = sin(t)e^{-t}')

% x axis
t=linspace(3,6.5,2);
y=0*t;
plot(t,y,'k')

subplot(2,2,4)
t=6:0.01:10;
y= sin(t).*exp(-t);
plot(t,y,'b')

hold on
grid on
xlabel('t')
ylabel('y');
title('y = sin(t)e^{-t}')

% x axis
t=linspace(6,10,2);
y=0*t;
plot(t,y,'k')

axis( [6 , 10, -0.001, 0.001 ])
