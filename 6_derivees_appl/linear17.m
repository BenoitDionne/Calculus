close all;

dynamics(@affine_syst, 'x_{n+1} = 0.9 x_n + 8', 0.9, 8, [0,100], 10, 12, 100);


% Set up the graph

% close all;
% A1=0;
% A2=100;
% B1=0;
% B2=100;
% axis equal;
% grid on;
% hold on;
% xlabel('x_n');
% ylabel('x_{n+1}');
% title('x_{n+1} = 0.9 x_n + 8');

% plot the line y = x
% x = linspace( 0, 100, 2);
% plot(x,x,'b');
% text(27,23,'y = x'); 

% plot the graph of the function y = f(x)
% x = linspace( 0, 100, 2);
% y = 0.9*x + 8;
% plot(x,y,'k');
% text(9,38,'y=f(x) = 0.9 x+8'); 

% plot the iterations
% X0 = 10;
% X1 = 0.9 * X0 + 8;
% y = linspace( 0, X1, 2);
% x = ones(2,1)*X0;
% plot(x,y,'r');

%  arrow
% s = [X0-0.02*(A2-A1), X0];
% t = [X1/2 - 0.02*(B2-B1), X1/2];
% plot(s,t,'r')
% s = [X0+0.02*(A2-A1), X0];
% plot(s,t,'r')

% x = linspace(X0, X1, 2);
% y = ones(2,1)*X1;
% plot(x,y,'r');
% X0 = X1;
% for i=1:12
%   X1 = 0.9*X0+8;
%   y = linspace(X0, X1, 2);
%   x = ones(2,1)*X0;
%   plot(x,y,'r');
%   x = linspace(X0, X1, 2);
%   y = ones(2,1)*X1;
%   plot(x,y,'r');
%   X0 = X1;
% end
% Y = X1;

% plot the x and y axes
% x = linspace(0, 100, 2);
% y = 0*x;
% plot(x,y);

% y = linspace(0, 100, 2);
% x = 0*y;
% plot(x,y);

% plot the lines x=80 and y=80 between the axes and the point (80,80)
% x = linspace(0, 80, 2);
% y = 0*x+80;
% plot(x,y,'--');

% y = linspace(0, 80, 2);
% x = 0*y+80;
% plot(x,y,'--');

% axis( [ A1, A2, B1, B2 ]);

