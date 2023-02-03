%  fish_season(r, M, h, S, time, init_conds, accuracy)
%
% Program to draw the solution of the ODE
%
%  x' = r x (1 - x/M) - H(t) h x
%
% where
%         [  0  for  t-[t] < S
%  H(t) = [
%         [  1  for  t-[t] >= S
%
% and [t] is the greatest integer smaller than or equal to  t.
% e.g.
%
% fish_season(0.8, 1000, 0.1, 0.5, [ 0 , 20], [ 800 ], 0.000001)
%
function fish_season(r, M, h, S, time, init_conds, accuracy)
  options = odeset('RelTol', accuracy);
  N = length(init_conds);
  f1 = floor(time(1));
  f2 = floor(time(2));

  % Set up the graph
  cla;

  % axis equal;
  grid on;
  hold on;
  xlabel('t');
  ylabel('x');
  title(['Population de poissons: r=',num2str(r),', M=',num2str(M),...
         ', h=',num2str(h),', S=',num2str(S)]);
  figure(gcf);
  t = time(1);
  X = init_conds;

  % Note that the rows  [n, X] and [n+S,X] are repeated in the full array
  % [t, X],  Since they do not affect the graph of the solutions and there
  % are so few repetitions compare to the total number of rows in the
  % array  [t,X], we just left them inside the array.
  if ( time(1) < f1 + S )
    [tt,XX] = ode45(@lovo, [time(1),f1+S], init_conds, options);
    t = [t ; tt];
    X = [X ; XX];
    s = size(X,1);
    X0 = X(s,:);
    [tt,XX] = ode45(@lovo, [f1+S, f1+1], X0, options);
    t = [t ; tt];
    X = [X ; XX];
  else
    [tt,XX] = ode45(@lovo, [time(1), f1+1], init_conds, options);
    t = [t ; tt];
    X = [ X ; XX];
  end

  for m=f1+1:f2-1
    s = size(X,1);
    X0 = X(s,:);
    [tt,XX] = ode45(@lovo, [m,m+S], X0, options);
    t = [t ; tt];
    X = [ X ; XX];
    s = size(X,1);
    X0 = X(s, :);
    [tt,XX] = ode45(@lovo, [m+S, m+1], X0, options);
    t = [t ; tt];
    X = [ X ; XX];
  end

  if ( time(2) > f2 + S )
    s = size(X,1);
    X0 = X(s,:);
    [tt,XX] = ode45(@lovo, [f2, f2+S], X0, options);
    t = [t ; tt];
    X = [ X ; XX];
    s = size(X,1);
    X0 = X(s, :);
    [tt,XX] = ode45(@lovo, [f2+S, time(2)], X0, options);
    t = [t ; tt];
    X = [ X ; XX];
  elseif ( time(2) > f2 )
    s = size(X,1);
    X0 = X(s,:);
    [tt,XX] = ode45(@lovo, [f2, time(2)], X0, options);
    t = [t ; tt];
    X = [ X ; XX];
  end
      
  % plot a solution
  for n=1:N
    plot(t,X(:,n));
  end
  
  function xp = lovo(t, x)
    xp = r*x.*(1-x/M) - H(t)*h*x;
  end

  function x = H(t)
    if ( t - floor(t) < S )
      x = 0;
    else
      x = 1;
    end
  end
end  % for the function

