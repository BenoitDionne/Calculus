close all;

dynamics(@hs_logistic_syst, 'y = 3.2 x (1 - x)', 3.2, 0, [0,1], ...
         [0.5130445095] , 4, 100, 'x', 'n', 0.03)

figure

dynamics(@hs_logistic_syst, 'y = 3.47 x ( 1 - x)', 3.47, 0, [0,1], ...
         [0.40291365318], 8, 100, 'x', 'n', 0.03)

figure

dynamics(@hs_logistic_syst, 'y = 3.47 x ( 1 - x)', 3.47, 0, [0,1], ...
         [0.1], 20, 100)
