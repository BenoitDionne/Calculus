close all;

% Graph of  y = 3 e^(t/3)
x = -4:0.01:4;
y = 3*exp(x/3);
plot(x,y,'b');
hold on
grid;
text(0.6, 3.3, 'y = 3 e^{t / 3}');

% Graph of  y = t + 4
x = -4:8:4;
y = x + 4;
plot(x,y,'r');
text(2.8, 6.5, 'y = t + 4');

% The x axis
x=-4:8:4;
y=0*x;
plot(x,y,'k');

% The y axis
y=-2:14:12;
x=0*y;
plot(x,y,'k');

% The positive intersection is at t = T
T = 2.15686752033302;
Y = T + 4;
text(T, -0.5, 'T');

% The line y = Y
x=0:T:T;
y=0*x + Y;
plot(x,y, '--k');

% The line x = T
y=0:Y:Y;
x=0*y + T;
plot(x,y, '--k');

% The title and the labels
xlabel('t');
ylabel('y');
title('t + 4 = 3 e^{t / 3}');
