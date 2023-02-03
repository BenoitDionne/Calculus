close all;

% To use LateX
% set(0,'defaultTextInterpreter','latex');

% The graph of  y = -sin(x)
x = -1:0.01:8;
y = -sin(x);
plot(x,y,'b')
hold on
grid on
text(0.2, 1.3, 'La courbe pleine est le graphe de f(x) = -sin(x)');
% text(0.2, 1.3, 'La courbe pleine est le graphe de $f(x) = -\sin(x)$','FontSize',12);

% Approximation of the derivative of cos(x)
N = 24;
C = 2*pi/N;
H = 0.00001;
x = [];
y = [];
for i=0:N
  x1 = i*C;
  y1 = ( cos(x1 + H) - cos(x1) )/H;
  x = [x , x1];
  y = [y , y1];
end
plot(x,y,'ob','MarkerFaceColor', 'b')
text(0.2, 1.1, 'Les cercles sont les approximations de f''(x)')
% text(0.2, 1.1, 'Les cercles sont les approximations de $f''(x)$','FontSize',12);

% Print out the coordinates (x1,y1) and the difference |-sin(x1) - y1| 
M = [x ; y ; abs(-sin(x)-y)]'

% Create the latex table for the previous data
disp('The latex table with these results can be found in der15.tex');
latexTable('der15.tex', M, [1,2,3], 1, 0, ['Approximations de la ' ...
                    'dérivée de $f(x) = \cos(x)$'], 'TAB_COS_P', ...
           ['      $x$                              '; ...
            '$m = \frac{f(x+0.00001)-f(x)}{0.00001}$'; ...
            '    $|-\sin(x)-m|$                     '], ['';'';'']);   

% The x axis
x = -1:9:8;
y = 0.*x;
plot(x,y,'k')

% The y axis
y = -1.2:2.7:1.5;
x = 0*y;
plot(x,y,'k')

% The title and the labels
grid on;
xlabel('x')
ylabel('y')
title('f ''(x) pour f(x) = cos(x)')
% title('$f''(x)$ pour $f(x) = \cos(x)$','FontSize',12)
axis([-1,8,-1.2,1.5])
