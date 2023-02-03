close all;

% Graph of  y = R(t) = \beta/((x+\alpha)(t-\tau))  for \beta = 2, \alpha = 1
% and \tau = 2
x=0:0.01:8;
y=2*x.*((x+2).*(x+1)).^(-1);
plot(x,y,'b');
hold on
grid on;

% The x axis
x=0:8:8;
y=0*x;
plot(x,y,'k');

% The line y = sqrt(2)/((sqrt(2)+2)(sqrt(2)+1))
x=0:8:8;
y=0*x + 2*sqrt(2)/((sqrt(2)+2)*(sqrt(2)+1));
plot(x,y, '--k');

% The y axis
y=0:0.4:0.4;
x=0*y;
plot(x,y,'k');

% The title and the labels
xlabel('t');
ylabel('y');
title('y = R(t) = \beta t/(( t + \alpha)(t+\tau)) avec \alpha=1, \beta=2 et \tau=2');
