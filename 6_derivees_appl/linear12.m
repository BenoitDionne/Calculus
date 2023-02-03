close all;

dynamics(@affine_syst, 'z_{i+1} = 0.5 z_i + 8', 0.5, 8, [0,18], [2], 7, 100, 'z', 'i');
