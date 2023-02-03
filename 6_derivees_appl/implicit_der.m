clf

% implicit graph of Graph of (x+y)^3 + x e^y = 2
f = @(x,y) (x+y).^3 + x.*exp(y) - 2;
fimp = fimplicit(f, [-1,2,-2,10]);
fimp.Color = 'b';
hold on;
grid on;

% graph of the tangent at (1,0)
x=-1:3:2;
y= -x + 1;
plot(x,y,'r');

% The x axis
y=0*x;
plot(x,y,'k')

% The y axis
y=-2:12:10;
x=0*y;
plot(x,y,'k');

% The function
text(-0.9, 1.1, 'y = - x + 1');

% using  fsolve({3*(x+y)^2+x*exp(y) = 0, (x+y)^3+x*exp(y)-2 = 0});  in Maple
% because I don't have the optimization toolbox in Matlab, we find that
% the point where the slope of the tangent line is vertical is
x0 = -0.6528643514;
y0 = 3.848687697;
plot(x0,y0,'ok','MarkerFaceColor', 'b' );
text(-0.8, 3.8, 'A');

% The title and the labels
xlabel('x');
ylabel('y');
title('(x+y)^3 + x e^y = 2');
