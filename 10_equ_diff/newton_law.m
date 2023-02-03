function yp = newton_law(x,y)
    yp = 0.5*(10-y);
end

% To be used with
%  slopefield(@newton_law,'y'' = 0.5 (10 -y)','t','y',0,10,4,15,3,[0 5;0 10; 0 15])
% to produce the picture newton_law.png
