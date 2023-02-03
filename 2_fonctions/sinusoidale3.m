close all

% Graph of  y =  36.9 + 0.3*cos(pi*(t - 13)/12)
x=0:0.01:38;
y = 36.9 + 0.3*cos(pi*(x - 13)/12);
plot(x,y,'b')
hold on
grid on;

% The y axis
y=36.5:0.9:37.4;
x = 0*y;
plot(x,y,'k');

% The line y = 36.9
x=0:38:38;
y=0*x + 36.9;
plot(x,y, '--r')

% The phase
x=0:6:6;
y= 37.25+ 0*x;
plot(x,y,'r')
x=7.5:5.5:13;
y= 37.25 + 0*x;
plot(x,y,'r')
y=37.2:0.1:37.3;
x= 13 + 0*y;
plot(x,y,'r')
text(6.5, 37.25,'T');

% The period
x=13:11:24;
y= 37.25 + 0*x;
plot(x,y,'r')
x=26:11:37;
y= 37.25 + 0*x;
plot(x,y,'r')
y=37.2:0.1:37.3;
x=37 + 0*y;
plot(x,y,'r')
text(24.4, 37.25,'P');

% The amplitude
x=-2:2:0;
y= 36.9 + 0*x;
plot(x,y,'r')
y= 37.2 + 0*x;
plot(x,y,'r')
y= 36.9:0.12:37.02;
x = -1 + 0*y;
plot(x,y,'r')
y= 37.08:0.12:37.2;
x= -1 + 0*y;
plot(x,y,'r')
text(-1.4,37.05,'A');

% The average
text(0.3,36.88,'M');

% The title and the labels
xlabel('t');
ylabel('y');
title('y = T(t) = 36.9 + 0.3 cos(\pi (t-13)/12)');
