%	vetorfield(funct,funct_name,x_name,y_name,xmin,xmax,ymin,ymax,density,init_cond,EqualAxis,Positive,flag_limit,Method)
%
%	funct       is the right hand side of  y'=f(t,[x y])
%       func_name   title of the graph.
%       x_name      label of the horizontal axis.
%       y_name      label of the vertical axis.
%	xmin        is the lower bound of  x .
%	xmax        is the upper bound of  x .
%	ymin        is the lower bound of  y .
%	ymax        is the upper bound of  y .
%	density     is the number of points by unit that should be used.
%	init_cond   is a column matrix with
%                   X(0) = [init_cond(i,1) init_cond(i,2)]
%                   for all  i .
%       EqualAxis   is set to true if equal scales are required on the
%                   axis and false otherwise (default).
%       Positive    is true if you want only t>0 and false for all t (default)
%       flag_limit  is the limit for the integration time used to draw
%                   a solution.  it is 100 by default.
%       Method      is 1 (default) with quiver and 2 for annotation
%
%	If  init_cond  is not given, then no solution is drawn.
%	If in addition  density  is not given, then  density  is set
%       to 3.
%
%       funct  is the handle of a function define in an m-file or
%       anonymously.
%
%       For instance, we can write:
%
%       ff = @(t,X) [sin(X(1)+X(2)); cos(X(1)+X(2))];
%       vectorfield(ff,'title','x','y',-2,2,-2,2,4,[1 1;-1 1;0 1])
%
%       or, if the function has some parameters,
%
%       gg = @(t,X,param) = [param(1)*sin(X(1)+X(2)+param(2)); param[2]*X(1)];
%       hh = @(t,X) gg(t,X,[2,pi]);
%       vectorfield(hh,'title','x','y',-2,2,-2,2,4,[1 1;-1 1;0 1])
%
%  Benoit Dionne
%  Univ. of Ottawa
%  2021	 
%
function vectorfield(funct,funct_name,x_name,y_name,xmin,xmax,ymin,ymax,density,init_cond, EqualAxis, Positive, flag_limit, Method)

% default arguments
arguments
   funct;      % function handle
   funct_name string;
   x_name string;
   y_name string;
   xmin double;
   xmax double;
   ymin double;
   ymax double;
   density int32 = 3;
   init_cond (:,2) double = [];
   EqualAxis logical = false;
   Positive logical = false;
   flag_limit int32 = 100;
   Method int16 = 1;
end

clf

% We now plot the slope field

spacing = 1/double(density);
tempo = floor(xmin/spacing);
if ( tempo ~= xmin/spacing )
   mesh_xmin = (tempo+1)*spacing;
else
   mesh_xmin = xmin;
end
tempo = floor(ymin/spacing);
if (tempo ~= ymin/spacing)
   mesh_ymin = (tempo+1)*spacing;
else
   mesh_ymin = ymin;
end
mesh_x = mesh_xmin:spacing:xmax;
mesh_y = mesh_ymin:spacing:ymax;
size_x = size(mesh_x,2);
size_y = size(mesh_y,2);

hold on
grid on
if ( EqualAxis )
   axis equal
end
title(funct_name);
xlabel(x_name)
ylabel(y_name)
axis([xmin xmax ymin ymax])

if (Method == 1 )
    % First approach to draw the phase portrait
    
    startArr = [];
    dirArr = [];

    for (i=1:size_x)
        for (j=1:size_y)
            startarr = [mesh_x(i);mesh_y(j)];
            direct = feval(funct,0, startarr);
            norm_direct = norm(direct,2);
            if ( norm_direct > 0 )
                unit_direct = direct/norm_direct;
                dirarr = (2/3)*spacing*unit_direct;
                startArr = [startArr ; startarr'];
                dirArr = [ dirArr ; dirarr' ];
            else
                plot(startarr(1,1),startarr(2,1),'r.');
            end
        end
    end
    q = quiver(startArr(:,1), startArr(:,2), dirArr(:,1), dirArr(:,2),'b');
    q.Marker = '.';
    q.AutoScale = 'off';

else
    % Second approach to draw the phase portrait
    % annotation() draw arrows on top of the plot at fixed positions
    % relative to the canvas.  They are not part of the plot.  You cannot
    % zoom in without plotting the figure again.
    % You also cannot clear the graph with cla, you have to use clf.
    % annotation doesn't accept matrices of arguments like it is
    % recommended for all functions.

    xlength = xmax - xmin;
    ylength = ymax - ymin;

    pos = get(gca,'Position');

    for (i=1:size_x)
        for (j=1:size_y)
            startarr = [mesh_x(i);mesh_y(j)];
            direct = feval(funct,0, startarr);
            norm_direct = norm(direct,2);
            if ( norm_direct > 0 )
                unit_direct = direct/norm_direct;
                endarr = startarr + (2/3)*spacing*unit_direct;
                if ( ( endarr(1,1) <= xmax ) & ( endarr(1,1) >= xmin ) & ...
                   ( endarr(2,1) <= ymax ) & ( endarr(2,1) >= ymin ) )
                    xarr_ann = [pos(1) + pos(3)*(startarr(1)-xmin)/xlength , pos(1) + pos(3)*(endarr(1)-xmin)/xlength];
                    yarr_ann = [pos(2) + pos(4)*(startarr(2)-ymin)/ylength , pos(2) + pos(4)*(endarr(2)-ymin)/ylength];
                    ar = annotation('arrow',xarr_ann,yarr_ann);
                    ar.LineWidth = 1;
                    ar.HeadStyle = 'cback1';
                    ar.HeadLength = 5;
                    ar.HeadWidth = 5;
                    ar.Color = 'blue';
                end
                plot(startarr(1,1),startarr(2,1),'b.');
            else
                plot(startarr(1,1),startarr(2,1),'r.');
            end
        end
    end
end

% We draw some solutions in the vector field if requested.

if ( ~isempty(init_cond) ) 
   options = odeset('RelTol',1e-6,'AbsTol',[1e-5]);
   for i=1:size(init_cond,1)
       sign = -1;
       for n = 0:1
           if (Positive)
               n = 1;
               sign = 1;
           end
           flag = 0;
           X0 = [init_cond(i,1);init_cond(i,2)];
           t0 = 0;
           tf = sign*10;
           while ( ( X0(1,1) <= xmax ) & ( X0(1,1) >= xmin ) & ...
                   ( X0(2,1) <= ymax ) & ( X0(2,1) >= ymin ) & ...
                   ( flag < flag_limit ) )
               [t, X] = ode113(funct,[t0 tf],X0,options);
               plot(X(:,1),X(:,2),'k');
               X0 = X(size(X,1),:)';
               t0 = tf;
               tf = tf + sign*10;
               flag = flag + 1;
           end
           sign = sign * sign;
       end
   end
end

end    % for the function
