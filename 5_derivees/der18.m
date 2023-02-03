% Approximation of e
b = 2;
x = 0;
H = 0.00000001;
S = 0.1;
result = [];
for n = 0:1:100
  % Approximation of the derivative of b^x
  y = ( b^(x + H) - 1 )/H;
  result = [ result; [b , y] ];
  if ( y < 1 )
    b = b + S;
  else
    b = b - S;
    S = S/10;
    b = b + S;
  end
end

result

% Create the latex table for the previous data
disp('The latex table with these results can be found in der18.tex');
latexTable('der18.tex', result, [1,2], 1, 0, ['Approximations de $e$'], ...
           'TAB_EXP', ...
           ['$b$         '; '$C_b$       '; 'Commentaires'], ['';'';'']);   
