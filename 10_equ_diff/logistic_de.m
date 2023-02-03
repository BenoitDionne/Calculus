function yp = logistic_de(x,y)
    yp = 0.8*y.*(5-y);
end

% To be used with
%  slopefield(@logistic_de,'y'' = 0.8 y(5-y)','t','y',0,2,0,7,3,[0 1; 0 3;0 5; 0 7])
% to produce the picture logistic_de.png
