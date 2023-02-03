function yp = reactDiff2(x,y)
    yp = 5-0.5*y;
end

% To be used with
%  slopefield(@reactDiff2,'C'' = 5 - 0.5 C','t','C',0,10,-2,13,1,[0 -1;0 2; 0 4;0 12])
% to produce the picture champ_pente2.png
