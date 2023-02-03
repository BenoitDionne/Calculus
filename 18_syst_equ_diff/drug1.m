%  drug1(k1, k2, K, time, init_conds, accuracyi, graph_title, Xcoord, Ycoord)
%
% Program to draw the graphs of x1  and  x2 , where  (x1, x2)  is the
% solutions of the system
%
%  x_1' = K - k_1 x_1
%  x_2' = k_1 x_1 - k_2 x_2
%
% satisfying the initi conditions given in init_conds.
% e.g.
%
% Only une pill:
%
% drug1(1.386,0.1386,0,[0,20],[1, 0],0.00001,'Decongestionnant','t','x,y')
% drug1(0.6931,0.0231,0,[0,40],[1, 0],0.00001,'antihistaminique','t','x,y')
%
% Continuous medication
%
% drug1(1.386,0.1386,1,[0,60],[0, 0],0.00001,'Decongestionnant','t','x,y')
% drug1(0.6931,0.0231,1,[0,300],[0, 0],0.00001,'antihistaminique','t','x,y')
%
function drug1(k1, k2, K, time, init_conds, accuracy, graph_title, Xcoord, Ycoord)
  options = odeset('RelTol', accuracy);
  N = size(init_conds,1);

  % Set up the graph
  cla;
  % axis equal;
  grid on;
  hold on;
  xlabel(Xcoord);  
  ylabel(Ycoord);
  title([graph_title,':  k_1=',num2str(k1),', k_2=',num2str(k2),', K=',...
         num2str(K)]);

  for n=1:N
    [t,X] = ode45(@funct, time, init_conds(n,:), options);
    % plot an orbit
    plot(t,X(:,1),'b');
    plot(t,X(:,2),'r');
  end
  
  function xp = funct(t, x)
    xp(1,1) = K -k1 *x(1,1);
    xp(2,1) = k1*x(1,1) - k2*x(2,1);
  end
end
