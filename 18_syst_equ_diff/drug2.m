%  drug2(k1,k2,S,period,value,time,init_conds,accuracy,graph_title,Xcoord,Ycoord)
%
% Program to draw the graphs of  x1  and  x2, where (x1, x2) is the
% solution of the system
%
%  x1' = -k1 x1 + H(t)
%  x2' = k1 x1 - k2 x2
%
% where
%         [  value  for  t-[t/period]*period <= S
%  H(t) = [
%         [  0      for  t-[t/period]*period > S
%
% and [z] is the greatest integer smaller than or equal to  z.
% e.g.
%
% drug2(1.386,0.1386,0.5,6,12,[0,40],[0, 0],0.000001,'decongestionnant','t','x,y')
% drug2(0.6931,0.0231,0.5,6,12,[0,80],[0, 0],0.000001,'antihistaminique','t','x,y')
%
function drug2(k1,k2,S,period,value,time,init_conds,accuracy,graph_title,Xcoord,Ycoord)
  options = odeset('RelTol', accuracy);
  N = size(init_conds,1);
  f1 = floor(time(1)/period);
  f2 = floor(time(2)/period);

  % Set up the graph
  cla;
  % axis equal;
  grid on;
  hold on;
  xlabel(Xcoord);
  ylabel(Ycoord);
  title([graph_title,' k_1=',num2str(k1),', k_2=',num2str(k2),...
         ', period=',num2str(period),', K=',num2str(value)]);

  for n=1:N
    t = time(1);
    X = init_conds(n,:);

    % Note that the rows  [n, X] and [n+S,X] are repeated in the full array
    % [t, X].  Since they do not affect the graph of the solutions and there
    % are so few repetitions compare to the total number of rows in the
    % array  [t,X], we just left them inside the array.
    tmp1 = f1*period;
    tmp2 = tmp1 + S;
    tmp3 = (f1+1)*period;
    if ( time(1) < tmp2 )
      [tt,XX] = ode45(@lovo, [time(1),tmp2], init_conds, options);
      t = [t ; tt];
      X = [X ; XX];
      s = size(X,1);
      X0 = X(s,:);
      [tt,XX] = ode45(@lovo, [tmp2, tmp3], X0, options);
      t = [t ; tt];
      X = [X ; XX];
    else
      [tt,XX] = ode45(@lovo, [time(1), tmp3], init_conds, options);
      t = [t ; tt];
      X = [X ; XX];
    end

    for m=f1+1:f2-1
      s = size(X,1);
      X0 = X(s,:);
      tmp1 = m*period;
      tmp2 = tmp1 + S;
      tmp3 = (m+1)*period;
      [tt,XX] = ode45(@lovo, [tmp1, tmp2], X0, options);
      t = [t ; tt];
      X = [X ; XX];
      s = size(X,1);
      X0 = X(s, :);
      [tt,XX] = ode45(@lovo, [tmp2, tmp3], X0, options);
      t = [t ; tt];
      X = [X ; XX];
    end

    tmp1 = f2*period;
    tmp2 = tmp1 + S;
    if ( time(2) > tmp2 )
      s = size(X,1);
      X0 = X(s,:);
      [tt,XX] = ode45(@lovo, [tmp1, tmp2], X0, options);
      t = [t ; tt];
      X = [X ; XX];
      s = size(X,1);
      X0 = X(s, :);
      [tt,XX] = ode45(@lovo, [tmp2, time(2)], X0, options);
      t = [t ; tt];
      X = [X ; XX];
    elseif ( time(2) > tmp1 )
      s = size(X,1);
      X0 = X(s,:);
      [tt,XX] = ode45(@lovo, [tmp1, time(2)], X0, options);
      t = [t ; tt];
      X = [X ; XX];
    end

    % plot solutions
    plot(t,X(:,1),'b');
    plot(t,X(:,2),'r');
  end
  
  function xp = lovo(t, x)
    xp(1,1) = -k1 * x(1,1) + H(t);
    xp(2,1) = k1*x(1,1) - k2*x(2,1);
  end

  function x = H(t)
    if ( t - floor(t/period)*period < S )
      x = value;
    else
      x = 0;
    end
  end
end
