close all;

dynamics(@affine_syst, 'y_{i+1} = 0.5 y_i', 0.5, 0, [0,1500], [1200], 7, 100, 'y','i');
