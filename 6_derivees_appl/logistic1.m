close all;

funct = @(x,a,b) a*x.*(1-x);

dynamics(funct, 'x_{n+1} = 2x_n(1-x_n)', 2, 0, [0,1], [0.2], 5, 100, 'x', 'n', 0.02);

