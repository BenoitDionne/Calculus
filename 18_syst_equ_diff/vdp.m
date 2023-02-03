function DY = vdp(t,Y,param)
    DY(1,1) = Y(2,1);
    DY(2,1) = -param*Y(2,1).*(Y(1,1).^2 - 1) - Y(1,1);
end

% To be used with
% vdp1 = @(t,X) vdp(t,X,0.1)
% vectorfield( vdp1,'Van der Pol','y_1','y_2',-3.5,3.5,-3.5,3.5,2,[3 2; -1 3],false,true)
% and
% vectorfield( vdp1,'Van der Pol','y_1','y_2',-2.1,2.1,-2.1,2.1,2,[0.5 0.5; -1 1],false, true)
