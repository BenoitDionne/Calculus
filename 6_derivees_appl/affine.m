close all;

dynamics(@affine_syst, 'y = 0.7 x + 0.2', 0.7, 0.2, [0,1], [0.3], 10, ...
         100, 'x', 'n', 0.03)

figure

dynamics(@affine_syst, 'y = 2 x - 0.6', 2, -0.6, [-4,1], [0.47], 4, ...
         100)

figure

dynamics(@affine_syst, 'y = -0.7 x + 0.68', -0.7, 0.68, [0,0.6], [0.2], 10, ...
         100)

figure

dynamics(@affine_syst, 'y = -2 x + 1.2', -2, 1.2, [-5,5], [0.5], 5, ...
         100, 'x','n', 0)
