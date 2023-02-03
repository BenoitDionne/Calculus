close all;

funct = @(x,a,b) a*(x.^(-1)) - b;

dynamics(funct, 'N_{n+1} = 100/N_n - 1', 100, 1, [0,80], [20], 7, 100, 'N');


% figure

% A1=0;
% A2=80;
% B1=0;
% B2=80;
% grid on;
% hold on;
% xlabel('x_n');
% ylabel('x_{n+1}');
% title('x_{n+1} = 100/x_n - 1');

% plot the line y = x
% x = linspace( 0, 80, 2);
% plot(x,x,'b');
% text(51, 47,'y = x'); 

% plot the graph of the function y = f(x)
% x = linspace( 0.1, 80, 1000);
% y = 100./x - 1;
% plot(x,y,'k');
% text(51, 3,'y=f(x) = 100/x - 1'); 

% plot the iterations starting with x_0 = 0.4
% X0 = 20;
% X1 = (100/X0)-1;
% y = linspace( 0, X1, 2);
% x = ones(2,1)*X0;
% plot(x,y,'r');

%  arrow
% s = [X0-0.02*(A2-A1), X0];
% if ( X1 > 0 )
%   t = [X1/2 - 0.02*(B2-B1), X1/2];
% else
%   t = [X1/2 + 0.02*(B2-B1), X1/2];
% end
% plot(s,t,'r')
% s = [X0+0.02*(A2-A1), X0];
% plot(s,t,'r')

% x = linspace(X0, X1, 2);
% y = ones(2,1)*X1;
% plot(x,y,'r');
% X0 = X1;
% for i=1:7
%   X1 = (100/X0) - 1;
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
% x = linspace(0, 80, 2);
% y = 0*x;
% plot(x,y);

% y = linspace(0, 80, 2);
% x = 0*y;
% plot(x,y);

% axis( [ A1, A2, B1, B2 ]);
