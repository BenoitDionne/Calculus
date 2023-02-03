function yp = champ_pentes3(x,y)
    yp = (x-1).^2 - y - 1;
end

% To be used with
%  slopefield(@champ_pentes3,'y'' = (x-1)^2 -y -1','x','y',-2,4,0,5,3,[-1 1])
% to produce the picture champ_pente3.png
