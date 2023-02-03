close all;

% Graph of  y = F(t) = \beta t/(x+\alpha) for \beta = 2, \alpha = 1
% and \alpha = 3
x=0:0.01:15;
y=2*x.*(x+1).^(-1);
plot(x,y,'b');
text(15.5, 1.9,'F(t) = 2t/(t+1)');
hold on
grid on;

y=2*x.*(x+3).^(-1);
plot(x,y,'b');
text(15.5, 1.65,'F(t) = 2t/(t+3)');

% The x axis
x=0:20:20;
y=0*x;
plot(x,y,'k');

% The line y = 2
x=0:20:20;
y=0*x + 2;
plot(x,y, '--k');

% The y axis
y=0:2.5:2.5;
x=0*y;
plot(x,y,'k');

% The title and the labels
xlabel('t');
ylabel('y');
title('y = F(t) = \beta t/( t + \alpha)');
