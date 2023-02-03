close all

t=-4:0.01:4;
x=4 + 5*cos(pi*t);
plot(t,x,'b')
hold on
grid on

% x axis
x = linspace(-4,4,8);
y = 0*x;
plot(x,y,'k');

% y axis
y = linspace(-1.5,9.5,11);
x = 0*y;
plot(x,y,'k');

title('x = f(t)');
xlabel('t');
ylabel('x');
axis([-4,4,-1.5,9.5])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

t=-4:0.01:4;
x= 3 + 5*cos(pi*(t-0.5));
plot(t,x,'b')
hold on
grid on

% x axis
x = linspace(-4,4,8);
y = 0*x;
plot(x,y,'k');

% y axis
y = linspace(-2.5,8.5,11);
x = 0*y;
plot(x,y,'k');

title('x = g(t)');
xlabel('t');
ylabel('x');
axis([-4,4,-2.5,8.5])

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

figure

x=-0.4:0.01:0.4;
y=2+0.2*cos((2*pi/0.2)*(x-0.1));
plot(x,y,'b');
grid on
hold on;

% x axis
% x = [-0.4,0.4];
% y = [0,0];
% plot(x,y,'k');

% y axis
y = [1.75,2.25];
x = [0,0];
plot(x,y,'k');

xlabel('t')
ylabel('x')
title('x = V(t)')
axis([-0.4,0.4,1.75,2.25]);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

x=-2:0.01:24;
y= 3 + 2 *cos( pi*(x-1)/5 );
plot(x,y,'b');
grid on;
hold on;

% x and y axis
% x = -2:26:24;
% y = 0*x;
% plot(x,y,'k');

y = 0.5:5:5.5;
x = 0*y;
plot(x,y,'k');

xlabel('t')
ylabel('x')
title('x = h(t)')
axis([-2,24,0.5,5.5]);
