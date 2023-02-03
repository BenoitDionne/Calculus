close all;

funct = @(x,a,b) a*x.*(1-x) - b*x;

dynamics(funct, 'N_{n+1} = 2.5 N_n(1-N_n) - h N_n', 2.5, 0.75, [0,0.7], [0.5], 5, 100, 'N', 'n', 0.02);

% figure

% A1=0;
% A2=0.7;
% B1=0;
% B2=0.5;
% grid on;
% hold on;
% xlabel('N_i');
% ylabel('N_{i+1}');
% title('N_{i+1} = 2.5 N_i(1-N_i) - 0.75 N_i');

% plot the line y = x
% x = linspace( 0, 0.7, 2);
% plot(x,x,'b');
% text(0.21, 0.18,'y = x');

% Graph of  y = f(x) = 2.5 x (1-x) - 0.75x = 1.75 x - 2.5x^2
% x=0:0.01:0.7;
% y=2.5*x.*(1-x) - 0.75*x;
% plot(x,y,'k');
% text(0.48, 0.28,'y=f(x) = 2.5x(1-x)-0.75x');

% plot the iterations starting with x_0 = 0.4
% X0 = 0.5;
% X1 = 2.5*X0 *(1-X0)- 0.75*X0;
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
% for i=1:12
%   X1 = 2.5*X0 *(1-X0)- 0.75*X0;
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
% x = linspace(0, 0.7, 2);
% y = 0*x;
% plot(x,y);

% y = linspace(0, 0.5, 2);
% x = 0*y;
% plot(x,y);

% axis( [ A1, A2, B1, B2 ]);
