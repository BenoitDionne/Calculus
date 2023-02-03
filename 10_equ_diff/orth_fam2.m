close all




% Family of curves  y = c e^x

x=-3:0.01:2;
y = 0.25 * exp(x);
plot(x,y,'b')
hold on
grid on
axis equal
text(2 , 1.8, 'y = 0.25 e^x')

y = 0.4 * exp(x);
plot(x,y,'b')
text(2 , 2.8, 'y = 0.4 e^x')

y = -0.4 * exp(x);
plot(x,y,'b')
text(2.1 , -2.7, 'y = -0.4 e^x')

% Family of curves  x = -y^2/2 + d

y = -2.5:0.01:2.5;
x = - y.^2/2 + 2;
plot(x,y,'r')
text(-2.4 , 2.7, 'y = -y^2/2 + 2')

y = -2:0.01:2;
x = - y.^2/2 + 1;
plot(x,y,'r')
text(-2.4 , 2.2, 'y = -y^2/2 + 1')

y = -1.5:0.01:1.5;
x = - y.^2/2 - 0.1;
plot(x,y,'r')
text(-2.4 , 1.7, 'y = -y^2/2 - 0.1')

% x axis
x = [ -3, 3.5];
y = [0 ,0];
plot(x,y,'k');

% y axis
x = [0 ,0];
y = [ -3, 3];
plot(x,y,'k');

title('y=c e^x  et y^2/2 = -x + d')
xlabel('x')
ylabel('y')
axis([-3,3.5,-3,3])
