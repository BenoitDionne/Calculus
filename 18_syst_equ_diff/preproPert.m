function DX = preproPert(t,X,param)
    DX(1,1) = X(1,1).*(1 - X(2,1)) - param(2)*X(2,1);
    DX(2,1) = param(1)*X(2,1).*(X(1,1) - 1);
end

% To be use with
%
% ppp = @(t,X) preproPert(t,X, [1, 0.0001])
% vectorfield(ppp, 'x'' = x(1-y) + 0.0001y , y'' = y(x-1)','x','y',0,3,0,2.5,4,[0.5 1.5;1.1 1.2],false,true,500)
%
% and
% ppp = @(t,X) preproPert(t,X, [0.1, 0.0001])
% vectorfield(ppp, 'x''= 0.1 x(1-y) + 0.0001y , y'' = y(x-1)','x','y',0,10,0,3,2,[0.5 1.5;1.1 1.2],false,true, 500)
%
