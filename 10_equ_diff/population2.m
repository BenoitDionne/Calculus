function yp = population2(x,y)
    yp = (5*y.^2)./(1+y.^2) -2*y;
end

% To be used with
%  slopefield(@population2,'N'' = 5 N^2/(1+N^2) - 2N','t','N',0,6,-1,5,2,[0 -2;0 0.4; 0 0.6;0 4])
% to produce the picture population2.png
