close all;

% To use LateX
% set(0,'defaultTextInterpreter','latex');

% The graph of  y = 3^x
x = -2:0.01:2;
y = 3.^x;
plot(x,y,'b')
hold on
grid on
text(-1.9, 9, 'La courbe pleine est le graphe de f(x) = 3^x');
% text(-1.9, 9, 'La courbe pleine est le graphe de $f(x) = 3^x$','FontSize',12);

% Approximation of the derivative of 3^x
N = 25;
C = 4/N;
H = 0.00001;
x = [];
y = [];
for i=0:N
  x1 = -2 + i*C;
  y1 = ( 3^(x1 + H) - 3^(x1) )/H;
  x = [x , x1];
  y = [y , y1];
end
plot(x,y,'ob','MarkerFaceColor', 'b')
text(-1.9, 8.3, 'Les cercles sont les approximations de f''''(x)')
% text(-1.9, 8.3, 'Les cercles sont les approximations de $f''(x)$','FontSize',12);

% Print out the coordinates (x1,y1) and the difference y/3^x
M = [x ; y ; y./(3.^x)]'

% Create the latex table for the previous data
disp('The latex table with these results can be found in der16.tex');
latexTable('der16.tex', M, [1,2,3], 1, 0, ['Approximations de la ' ...
                    'dérivée de $f(x) = 3^x$'], 'TAB_3_EXP', ...
           ['      $x$                              '; ...
            '$m = \frac{f(x+0.00001)-f(x)}{0.00001}$'; ...
            '    $m/3^x$                            '], ['';'';'']);   

% The x axis
x = -2:4:2;
y = 0.*x;
plot(x,y,'k')

% The y axis
y = -0.5:8.5:8;
x = 0*y;
plot(x,y,'k')

% The title and the labels
grid on;
xlabel('x')
ylabel('y')
title('f ''''(x) pour f(x) = 3^x');
% title('$f''(x)$ pour $f(x) = 3^x$','FontSize',12)
axis([-2,2,-0.5,10])
