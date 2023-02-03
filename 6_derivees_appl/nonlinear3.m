close all;

funct = @(x,a,b) x./(x+1);

dynamics(funct, 'x_{i+1} = -x_i/(x_i + 1)', 0, 0, [0,1.2], [1], 7, 100, 'x', 'i');

