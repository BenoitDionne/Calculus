
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

h0 = 1;
for i=1:10
  h0 = h0 - ( log(5/(2+2*h0)) - h0/(1+h0) )/( -(2+h0)/(1+h0)^2 )
end
