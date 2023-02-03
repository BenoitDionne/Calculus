close all;

% colormap prism
[X,Y] = meshgrid(-4:.01:4,-4:.01:4);
Z = sin(X);
[C,h] = contour(X,Y,Z,[-1, -0.7, -0.3, 0, 0.3, 0.7, 1]);
h.LineColor = 'b';
% set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2);
grid on
xlabel('x')
ylabel('y')
title('I')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

% colormap prism
[X,Y] = meshgrid(-2:.01:2,-2:.01:2);
Z = X.*Y;
[C,h] = contour(X,Y,Z,[-3, -2,-1.5,-1,-0.5, 0, 0.5, 1, 1.5, 2, 3]);
h.LineColor = 'b';
% set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2);
grid on
xlabel('x')
ylabel('y')
title('II')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

% colormap prism
[X,Y] = meshgrid(-2:.01:2,-2:.01:2);
Z = exp(-(X.^2 + Y.^2));
[C,h] = contour(X,Y,Z);
h.LineColor = 'b';
% [C,h] = contour(X,Y,Z,[-4,-3,-2,-1, 0, 1, 2, 3, 4]);
% set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2);
grid on
xlabel('x')
ylabel('y')
title('III')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

% colormap prism
[X,Y] = meshgrid(-2:.01:2,-2:.01:2);
Z = 1 -2*X - Y;
[C,h] = contour(X,Y,Z,[-4,-3,-2,-1, 0, 1, 2, 3, 4, 5, 6]);
h.LineColor = 'b';
% set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2);
grid on
xlabel('x')
ylabel('y')
title('IV')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure

% colormap prism
[X,Y] = meshgrid(-2:.01:2,-2:.01:2);
Z = X.^2 + 4*Y.^2;
[C,h] = contour(X,Y,Z,[0,1,2,4,6,8,10,12,14,16,18]);
h.LineColor = 'b';
% set(h,'ShowText','on','TextStep',get(h,'LevelStep')*2);
grid on
xlabel('x')
ylabel('y')
title('V')

