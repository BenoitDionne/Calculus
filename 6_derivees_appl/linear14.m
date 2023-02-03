close all;

dynamics(@affine_syst, 'x_{n+1} = 2 x_n - 1 (unites de 10^6)', 2, -1, [0,22], 3, 3, 100);
