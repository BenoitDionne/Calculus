close all;

funct = @(x,a,b) a*x.*(1-x.^2);

dynamics(funct, 'x_{n+1} = x_n(1-x_n^2)', 1, 0, [-0.4,0.4], [0.3, -0.3], 7, 100,'x','n',0.02);

figure

dynamics(funct, 'x_{n+1} = -x_n(1-x_n^2)', -1, 0, [-0.4,0.4], [0.3], 20, 100);

