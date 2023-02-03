close all;

funct = @(x,a,b) a*x.*(1-x.^2);

dynamics(funct, 'x_{n+1} = 2x_n(1-x_n^2)', 2, 0, [-1,1], [-0.4,0.4], 100, 100);

figure

dynamics(funct, 'x_{n+1} = 2x_n(1-x_n^2)', 2, 0, [0.6,0.8], 0.65, 100, 100);

