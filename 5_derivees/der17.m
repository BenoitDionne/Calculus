close all;

% To use LateX
% set(0,'defaultTextInterpreter','latex');

% The graph of  y = 2^x
x = -2:0.01:2;
y = 2.^x;
plot(x,y,'b')
hold on
grid on
text(-1.9, 3.3, 'La courbe pleine est le graphe de f(x) = 2^x');
% text(-1.9, 3.3, 'La courbe pleine est le graphe de $f(x) = 2^x$','FontSize',12);

% Approximation of the derivative of 2^x
N = 25;
C = 4/N;
H = 0.00001;
x = [];
y = [];
for i=0:N
  x1 = -2 + i*C;
  y1 = ( 2^(x1 + H) - 2^(x1) )/H;
  x = [x , x1];
  y = [y , y1];
end
plot(x,y,'ob','MarkerFaceColor', 'b');
text(-1.9, 3.6, 'Les cercles sont les approximations de f''''(x)');
% text(-1.9, 3.6, 'Les cercles sont les approximations de $f''(x)$','FontSize',12);

% Print out the coordinates (x1,y1) and the quotient y/2^x 
M = [x ; y ; y./(2.^x)]'

% Create the latex table for the previous data
disp('The latex table with these results can be found in der17.tex');
latexTable('der17.tex', M, [1,2,3], 1, 0, ['Approximations de la ' ...
                    'dérivée de $f(x) = 2^x$'], 'TAB_2_EXP', ...
           ['      $x$                              '; ...
            '$m = \frac{f(x+0.00001)-f(x)}{0.00001}$'; ...
            '    $m/2^x$                            '], ['';'';'']);   

% The x axis
x = -2:4:2;
y = 0.*x;
plot(x,y,'k')

% The y axis
y = -0.5:3.5:3;
x = 0*y;
plot(x,y,'k')

% The title and the labels
xlabel('x')
ylabel('y')
title('f ''''(x) pour f(x) = 2^x');
% title('$f''(x)$ pour $f(x) = 2^x$','FontSize',12)
