close all;

dynamics(@affine_syst, 'w_{i+1} = -0.5 w_i + 3', -0.5, 3, [0,4], [0.2], 7, 100, 'w', 'i');
