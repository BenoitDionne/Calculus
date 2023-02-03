close all;

dynamics(@affine_syst, 'p_{n+1} = 0.75 p_n + 1', 0.75, 1, [0,22], [20], 7, 100, 'g')

