% function step_funct(period, step, value, time) 
%
% Draw the graph of the function defined by
%         [ value   if  n*period + step(1) <= t <= n*period + step(2)
%  h(t) = [         for n an integer.
%         [ 0       otherwise
%
% We must have  0 <= step(1) < step(2) < period .
% time is the domain of the function to be drawn.
%
% e.g.
%  step_funct(6, [0, 0.5], 12, [0, 35])
%
function step_funct(period, step, value, time)
  if ( step(1) < 0  ||  step(1) > step(2) || step(2) > period )
    disp('You must have   0 <= step(1) < step(2) < period');
    return;
  end

  cla;
  X1 = -value/10;
  X2 = 11*value/10;
  T1 = time(1);
  T2 = time(2);
  axis([T1, T2, X1, X2]) 
  grid on;
  hold on;
  xlabel('t');
  ylabel('H');
  title('Une fonction periodique');

  % the x axis
  plot([0,0],[X1,X2],'k');
  set(gca,'Xtick',T1:3:T2)

  % the t axis
  plot([T1,T2],[0,0],'k');
  
  t = time(1);
  x = S(time(1));
  [t, x] = H(t, x);
  while  ( 1 == 1 )
    lt = length(t);
    tp = t(lt);
    if ( tp > time(2) )
      if( t(lt) == t(lt-1) )
        t(lt-1) = time(2);
        t(lt) = t(lt-1);
        x(lt-1) = S(time(2));
        x(lt) = x(lt-1);
      else
        t(lt) = time(2);
        x(lt) = S(time(2));
      end
      break;
    end
    [t, x] = H(t, x);
  end
  
  N = length(t);
  for n=2:N
    if ( t(n-1) == t(n) )
      plot( t(n-1:n), x(n-1:n), 'b:');
    else
      plot( t(n-1:n), x(n-1:n), 'b');  % 'LineWidth', 2
    end
  end

  function x = S(t)
    tf = floor(t/period);
    tg = t - tf*period;
    if ( tg >= step(1)  &&  tg <= step(2) )
      x = value;
    else
      x = 0;
    end
  end

  function [t,x] = H(t, x)
    lt = length(t);
    tp = t(lt);
    tf = floor(tp/period);
    t1 = tf*period + step(1);
    t2 = tf*period + step(2);
    t3 = (tf+1)*period + step(1);
    if ( tp < t1 )
      t = [t,t1];
      x = [x,0];
      t = [t,t1];
      x = [x,value];
    elseif ( tp < t2 )
      t = [t,t2];
      x = [x,value];
      t = [t,t2];
      x = [x,0];
    else        %  May be use ounce for t = time(1).
      t = [t,t3];
      x = [x,0];
      t = [t,t3];
      x = [x,value];
    end
  end
end
