close all;

% The graph of  y = cos(x)
x = -1:0.01:8;
y = cos(x);
plot(x,y,'b')
hold on
grid on

% The x axis
x = -1:12:11;
y = 0.*x;
plot(x,y,'k')

% The y axis
y = -1.25:2.75:1.5;
x = 0*y;
plot(x,y,'k')

% To use LateX
% set(0,'defaultTextInterpreter','latex');

% The graph of the axis of symmetry  x=pi  of  cos(x)
y = -1.25:2.05:0.8;
x = 0*y + pi;
plot(x,y,'--r')
y = 1:0.5:1.5;
x = 0*y + pi;
plot(x,y,'--r')
text(pi+0.2, 1.4, 'axe de')
text(pi+0.2, 1.3, 'symetrie')
text(pi+0.2, 1.2, 'x = \pi')
% text(pi+0.2, 1.4, 'axe de','FontSize',12);
% text(pi+0.2, 1.3, 'symetrie','FontSize',12);
% text(pi+0.2, 1.2, '$x = \pi$','FontSize',12);

% The graph of the tangente to the curve y=cos(x) at x = pi/6
x = -0.5:2.5:2;
y = cos(pi/6) - 0.5*( x - pi/6);
plot(x,y,'r')
text(pi/6+0.2, cos(pi/6), '(\pi/6,cos(\pi/6))');

% The graph of the tangente to the curve y=cos(x) at x = 11 pi / 6
x = 2*pi-2:0.1:2*pi+0.5;
y = cos(11*pi/6) + 0.5*( x - 11*pi/6);
plot(x,y,'r')
text(2*pi+1.1, 0.9, '(11\pi/6,cos(11\pi/6))');
x = 11*pi/6:0.1:2*pi+1;
y = cos(11*pi/6) + (x-11*pi/6)*(0.9-cos(11*pi/6))/(1+pi/6);
plot(x,y,'k')

% The point  x = 2 pi
text(2*pi, -0.07, '2\pi');
y = 0:1:1;
x = 0*y + 2*pi;
plot(x,y,'--r')

% The point  x = pi / 6
text(pi/6-0.1 , -0.07, '\pi/6');
y = [0, sqrt(3)/2];
x = 0*y + pi/6;
plot(x,y,'--r')

% The point  x = 11 pi / 6
text(11*pi/6-0.9 , -0.07, '11\pi/6');
x = 0*y + 11*pi/6;
plot(x,y,'--r')

% The title and the labels
xlabel('x')
ylabel('y')
title('y = cox(x)')
% title('y = cox(x)','FontSize',12)
axis([-1,11,-1.25,1.5])
