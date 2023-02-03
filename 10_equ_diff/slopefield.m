%	slopefield(funct,funct_name,x_name,y_name,xmin,xmax,ymin,ymax,density,init_cond,EqualAxis)
%
%	funct       is the right hand side of  y'=f(x,y)
%       func_name   title of the graph.
%       x_name      label of the horizontal axis.
%       y_name      label of the vertical axis.
%	xmin        is the lower bound of  x .
%	xmax        is the upper bound of  x .
%	ymin        is the lower bound of  y .
%	ymax        is the upper bound of  y .
%	density+1   is the number of points by unit that should be used.
%	init_cond   is a column matrix with
%                   init_cond(i,2) = x(init_cond(i,1))
%                   for all  i .
%       EqualAxis   is set to true if equal scales are required on the
%                   axis and false otherwise (default).
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
%       ff = @(x,y) sin(x+y);
%       slopefield(ff,'title','x','y',-2,2,-2,2,4,[1 1;-1 1;0 1])
%
%       or, if the function has some parameters,
%
%       gg = @(x,y,param) = param(1)*sin(x+y+param(2));
%       hh = @(x,y) gg(x,y,[2,pi]);
%       slopefield(hh,'title','x','y',-2,2,-2,2,4,[1 1;-1 1;0 1])
%
%  Benoit Dionne
%  Univ. of Ottawa
%  2021	 
%
function slopefield(funct,funct_name,x_name,y_name,xmin,xmax,ymin,ymax,density,init_cond, EqualAxis)

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
end

cla

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

for (i=1:size_x)
  for (j=1:size_y)
    slope = feval(funct,mesh_x(i),mesh_y(j));
    direct = [1,slope];
    unit_direct = direct/norm(direct,2);
    end_1 = [mesh_x(i),mesh_y(j)] - (1/3)*spacing*unit_direct;
    end_2 = [mesh_x(i),mesh_y(j)] + (1/3)*spacing*unit_direct;
    plot(mesh_x(i),mesh_y(j),'b.');
    plot([end_1(1);end_2(1)],[end_1(2);end_2(2)],'b');
  end
end

% We draw some solutions on the slope field if requested.

if ( ~isempty(init_cond) ) 
   options = odeset('RelTol',1e-6,'AbsTol',[1e-5]);
   for i=1:size(init_cond,1)
     if ( init_cond(i,1) ~= xmax )
       [xr,yr] = ode113(funct,[init_cond(i,1) xmax],[init_cond(i,2)],...
                   options);
       plot(xr,yr,'k');
     end
     if (init_cond(i,1) ~= xmin )
       [xl,yl] = ode113(funct,[init_cond(i,1) xmin],[init_cond(i,2)],...
                    options);
       plot(xl,yl,'k')
     end
   end
end

end  % for the function

% To create an m file with file name funct (e.g. owner123456) and
% function equation (e.g. 'sin(x+y)').
% sec = clock;
% extension = floor(sec(6)*10000);
% funct=[getenv('USER'),num2str(extension)];
% line1 = ['function yprime = ',funct,'(x,y)\n'];
% line2 = ['yprime = ',equation,';\n'];
% ftd = fopen([funct,'.m'],'wt');
% fprintf(ftd,line1);
% fprintf(ftd,line2);
% fclose(ftd);

% We remove  funct.m  if it exists.
% delete([funct,'.m']);

