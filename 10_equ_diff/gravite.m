% graph of x(t) = -10.5t^2/2 + 5t + 100
% and x'(t) = -10.5 t + 5

close all;

subplot(1,2,1)

t=0:0.01:4.9;
x= -10.5*t.^2/2 + 5*t + 100;
plot(t,x)
grid on
hold on

% The t axis
t=linspace(0,4.9,2);
x=0*t;
plot(t,x,'k');

title('x = -10 t^2 / 2 + 5 t + 100')
xlabel('t')
ylabel('x')
axis([0,4.9,-5,105]);

subplot(1,2,2)
t=0:0.01:4.9;
x = -10.5*t + 5;
plot(t,x)
grid on
hold on

% The x axis
t=linspace(0,4.9,2);
x=0*t;
plot(t,x,'k');

title('x = -10.5 t + 5')
xlabel('t')
ylabel('x')
axis([0,4.9,-48,8])
