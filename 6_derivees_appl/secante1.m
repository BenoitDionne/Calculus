format long

%  Solution of f(x) = e^x-x-2 = 0 using Newton's method

f = @(x) exp(x) - x - 2;

X0 = 1.5;
for i=1:4
  X0 = X0 - f(X0)/(exp(X0) - 1)
end

%  Solution of f(x) = e^x-x-2 = 0 using secont's method

X0 = 1.6;
X1 = 1.7;
for i=1:4
  X2 = X1 - f(X1)/( (f(X1)-f(X0))/(X1-X0))
  X0 = X1;
  X1 = X2;
end

