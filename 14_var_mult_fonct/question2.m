close all

% colormap prism
[X,Y] = meshgrid(0:.01:10,0:.01:10);
Z = 1 + 3*X - 2*Y;
[C,h] = contour(X,Y,Z,[-15, -10,-5, 0, 5, 10, 15, 20, 25, 30]);
h.LineColor = 'b';
set(h,'ShowText','on','TextStep',get(h,'LevelStep'));
grid on
xlabel('x')
ylabel('y')
% title('z = 1 - 2x - y')
