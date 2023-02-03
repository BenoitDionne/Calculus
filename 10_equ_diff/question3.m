function yp = question3(x,y)
     yp = (x-2).*(x-y);
end

% To be used with
%  slopefield(@question3,'y'' = (x - 2)(x-y)','x','y',-3,3,-3,3,2)
% to produce the picture question3.png
