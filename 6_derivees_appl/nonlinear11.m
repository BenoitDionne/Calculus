close all;

funct = @(x,a,b) (a*x.^2)./(b + x.^2);

dynamics(funct, 'x_{n+1} = 6 x_n^2/(7 + x_n^2)', 6, 7, [0,5], [1,2], 7, 100, 'x');


% $$$ function final_SDD(a,b) 
% $$$ 
% $$$ clf
% $$$ 
% $$$ %
% $$$ % Graph of  y = 6 x^2 (7 + x^2) for  a < x < b
% $$$ %
% $$$ x = a:0.01:b;
% $$$ y = (6*x.^2)./(7 + x.^2);
% $$$ plot(x,y,'k')
% $$$ hold on;
% $$$ grid on;
% $$$ axis on;
% $$$ axis equal;
% $$$ 
% $$$ %
% $$$ % display
% $$$ %
% $$$ ym = min(y);
% $$$ yM = max(y);
% $$$ ymin = min(-0.1,ym - min(1,0.1*(yM-ym)));
% $$$ ymax = max(0.1,yM + min(1,0.1*(yM-ym)));
% $$$ xlim([a,b]);
% $$$ ylim([ymin,ymax]);
% $$$ 
% $$$ %
% $$$ %  The y axis
% $$$ %
% $$$ y = [ymin,ymax];
% $$$ x = 0*y;
% $$$ plot(x,y,'r','LineWidth',2);
% $$$ 
% $$$ %
% $$$ %  The x axis if ymin < 0 < ymax
% $$$ %
% $$$ x = [a,b];
% $$$ y = 0*x;
% $$$ plot(x,y,'r','LineWidth',2);
