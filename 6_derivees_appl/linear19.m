close all;

dynamics(@affine_syst, 'p_{n+1} = 0.25 9_n + 30', 0.25, 30, [0,60], 5, 10, 100, 'p');

