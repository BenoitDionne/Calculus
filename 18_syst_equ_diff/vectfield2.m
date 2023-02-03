function DX = vectfield2(t,X)
  DX(1,1) = X(2,1) - X(1,1).*X(1,1);
  DX(2,1) = X(1,1) - 2;
end

% Use with
%  vectorfield( @vectfield2,'x'' = y - x^2 , y'' = x - 2','x','y',1.5,2.5,3.5,4.5,4,[1.5 4.2; 1.5 3.9; 2.5 3.8; 2.5 4])
