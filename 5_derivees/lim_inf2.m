% Approximation of  g(x) = 5 + exp(2-x/10)
N = 24;
ind = [];
x = [];
y = [];
for i=1:N
  x1 = i^2;
  y1 = 5 + exp(2-x1/10);
  ind = [ind , i ];
  x = [x , x1];
  y = [y , y1];
end

% Print out the coordinates (ind,x1,y1) 
M = [ind ; x ; y]'

% Create the latex table for the previous data
disp('The latex table with these results can be found in lim_inf2.tex');
latexTable('lim_inf2.tex', M, [1,2,3], 1, 0, ...
                    ['$g(x_n)$ pour quelques valeurs de $n$.'], ...
                    'TAB_LIM_INF', ...
           ['$n$        '; '$x_n = n^2$'; '$g(x_n)$   '], ['';'';'']);   

