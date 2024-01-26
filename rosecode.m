clc;
n=1000;
p=pi;
% Create a grid of values for R and T(n*n)
[R,T]=ndgrid(linspace(0,1,n),linspace(-2,20*p,n));
% Define functions to create coordinates
x=1-(.5).*((5/4).*(1-mod(3.6.*T,2.*p)./p).^2-.25).^2;
U=2.*exp(-T./(8.*p));
L=sin(U);
J=cos(U);
y=1.99.*(R.^2).*(1.2*R-1).^2.*L;
K=x.*(R.*L+y.*J);
%Create 3D coordinates
X=K.*sin(T);
Y=K.*cos(T);
Z=x.*(R.*J-y.*L);
%Plot the surface
surf(X,Y,Z,'LineStyle','none');
%grid,axis off;
colormap(jet);