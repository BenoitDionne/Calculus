close all;

% Graph of  y = F(x) = \beta/(x+\alpha)  for \beta = 2 and \alpha = 1
x=0:0.01:15;
y=2*x.*(x+1).^(-1);
plot(x,y,'b');
hold on
grid;

% The x axis
x=-3:23:20;
y=0*x;
plot(x,y,'k');

% The line y = 2
x=0:20:20;
y=0*x + 2;
plot(x,y, '--k');

% The y axis
y=-0.3:2.8:2.5;
x=0*y;
plot(x,y,'k');

% The point (-\tau,0) = -2,0)
text(-2.2, -0.1, '-2');

% The function
text(13, 1.7, 'F(t) = 2t/(t+1)');

% The line from (-\tau, 0 ) = (-2,0) to (8,F(8))
x = -2:11.7:9.7;
y = (2*8)/(10*(8+1))*(x+2);
plot(x,y,'--r');
text(5, 1.2, 'Droite passant par (-2,0) et (8,F(8))');
text(5, 1.05, 'de pente R(8)');

% The line from (-\tau, 0 ) = (-2,0) to (sqrt(2),F(sqrt(2))) which is
% the tangent line to the curve y=F(t) at t=sqrt(2).
x = -2:6.5:4.5;
y = (2*sqrt(2))/((2+sqrt(2))*(sqrt(2)+1))*(x+2);
plot(x,y,'--r');
text(1, 2.45, 'Tangent a la courbe y=F(t) au point t= sqrt(2)');
text(1, 2.3, 'de pente R(sqrt(2))');

% The title and the labels
xlabel('t');
ylabel('y');
title('y = F(t) = \beta t / ( t + \tau)');
