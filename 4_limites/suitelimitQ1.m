
y = [];
for n=1:1:100
  t = 1+1/n^2;
  y = [y; n , t ,  1/(1-t)^4];
end
arrayToTexR('y1.tex', y, [1,2,3],1,0,'','',...
            ['$      n      $'; '$t_n = 1+1/n^2$';'$     f(t_n)  $'], '')
disp 'The table for (1-t_n)^{-4} with t_n = 1+1/n^2 can be found in the file y1.tex';

% y = [];
% for n=1:1:100
%   t = 1-1/n.^2;
%   y = [ y ; n , t , 1/(1-t)^4];
% end
% arrayToTexR('y2.tex', y, [1,2,3],1,0,'','',...
%             ['$      n      $';'$t_n = 1-1/n^2$';'$    f(x_n)   $'], '')
% disp 'The table for (1-t_n)^{-4} with x_n = 1-1/n^2 can be found in the file y2.tex';

