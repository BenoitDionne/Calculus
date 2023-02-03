function yp = eulerCP(x,y)
    yp = (y+x)./x;
end

% To be used with
%  slopefield(@eulerCP,'y'' = (y + t)/t','t','y',0,2,0,4,3,[1 0;1 1])
% to produce the picture champ_pente2.png
