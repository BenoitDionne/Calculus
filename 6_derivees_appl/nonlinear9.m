close all;

funct = @(x,a,b) 2*(x.^2)./(1+ x.^2);

dynamics(funct, 'x_{n+1} = 2x_n^2/(1 + x_n^2)', 0, 0, [0,2.1], [2,0.5], 12, 100, 'x');

