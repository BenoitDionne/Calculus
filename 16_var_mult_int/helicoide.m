clc;
clear all;
u = linspace(0,1,50);
v = linspace(0,2*3.14159,100);
[U V] = meshgrid(u,v);
x = U.*cos(V);
y = U.*sin(V);
z = V;
surf(x,y,z);
