function yp = champ_pentes2(x,y)
     yp = x.*exp(x.*y);
end

% To be used with
%  slopefield(@champ_pentes2,'y'' = x e^{xy}','x','y',-3,3,-3,3,1,[0 -2;0 -1; 0 0;-1 1])
% to produce the picture champ_pente2.png
