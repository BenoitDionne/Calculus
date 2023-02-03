% iteration de f(x) = r x ( 1-x)  ou  r = 3.47
N = 50010;
r = 3.47;
x1 = 0;
y1 = 0.4;
x = [ x1 ];
y = [ y1 ];
for i=1:N
  x1 = i;
  y1 = r*y1*(1-y1);
  if ( i > 50000 )
    x = [x , x1];
    y = [y , y1];
  end
end

% Print out the coordinates (x1,y1)
M = [x ; y]'

% Create the latex table for the previous data
disp('The latex table with these results can be found in hs_logistic4.tex');
latexTable('hs_logistic4.tex', M, [1,2], 1, 0, ...
      ['L orbite avec la condition initiale $x_0=0.4$ pour l equation'...
      'logistique ou $r=3,47$'],... 
      'HS_LOGISTIC4', ['  $i$  ' ; ' $x_i$ ' ], ['';'']);   

