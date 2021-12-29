clear all, close all,clc,
to=0;
%po=0;%to=0 y(1)=0 et po=0, u(1)=1.5
N=10^(4);
ti=0; tf=10;
a=1;
h=(tf-ti)/N;
t=[ti:h:tf];
%p1=po+N*h;
%p=[to:h:p1];
y=zeros(1,N+1);
u=zeros(1,N+1);
y(1)=1;
u(1)=0;
for j=1:N
 K1y=h*u(j);
 K1u=h*(-a*y(j));

 K2y=h*(u(j)+K1u/2);
 K2u=h*(-a*(y(j)+K1y/2));
 
 K3y=h*(u(j)+K2u/2);
 K3u=h*(-a*(y(j)+K2y/2));
 
 K4y=h*(u(j)+K3u);
 K4u=h*(-a*(y(j)+K3y));
 

 y(j+1)=y(j)+(1/6)*(K1y+2*K2y+2*K3y+K4y);
 u(j+1)=u(j)+(1/6)*(K1u+2*K2u+2*K3u+K4u);
end

hold off
plot(t,y,'b')
yex=cos(t*sqrt(a));

err=max(abs(y-yex));
disp(err);
hold on 
plot(t,yex,'g')