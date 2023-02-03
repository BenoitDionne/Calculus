close all

x1=-2*pi:0.01:-3*pi/2-0.1;
x2=-3*pi/2+0.1:0.01:-pi/2-0.1;
x3=-pi/2+0.1:0.01:pi/2-0.1;
x4=pi/2+0.1:0.01:3*pi/2-0.1;
x5=3*pi/2+0.1:0.01:2*pi;

y=tan(x1);
plot(x1,y,'b')

hold on
grid on

y=tan(x2);
plot(x2,y,'b')

y=tan(x3);
plot(x3,y,'b')

y=tan(x4);
plot(x4,y,'b')

y=tan(x5);
plot(x5,y,'b')

x=[-3*pi/2,-3*pi/2];
y=[-10,10];
plot(x,y,'--r')

x=[-pi/2,-pi/2];
plot(x,y,'--r')

x=[pi/2,pi/2];
plot(x,y,'--r')

x=[3*pi/2,3*pi/2];
plot(x,y,'--r')

% The theta axis
x = [-2*pi, 2*pi];
y = [0, 0]
plot(x,y,'k')

title('y=tan(x)');
xlabel('\theta');
ylabel('y');
axis([-2*pi, 2*pi, -10,10])
