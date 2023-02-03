function DX = preproPert3(t,X,param)
    DX(1,1) = X(1,1).*( param(1)*(1 - X(1,1)) - param(2)*X(2,1)./(param(3) + X(1,1)));
    DX(2,1) = X(2,1).*(1 - X(2,1)./X(1,1));
end

% To be use with
%
% ppp = @(t,X) preproPert3(t,X, [5, 10, 0.03])
% vectorfield(ppp, 'u'' = u(5(1-u) - 10v/(0.03+u), v'' = v(1-v/u)','u','v',-0.1,1,0,0.4,2,[0.05 0.05;0.2 0.03; 0.5 0.3, 0.8, 0.35],false,true,200)
%
