clear all, close all,clc,
to=0;
%po=0;%to=0 y(1)=0 et po=0, u(1)=1.5
h=10^(-3);
N=10^(6);
ti=0; tf=10;
a=5;
h=(tf-ti)/N;
t=[ti:h:tf];
%p1=po+N*h;
%p=[to:h:p1];
y=zeros(1,N+1);
u=zeros(1,N+1);
y(1)=1;
u(1)=0;
for j=1:N
 y(j+1)=y(j)+h*u(j);
 u(j+1)=u(j)+h*(-a*y(j));
end
hold off
plot(t,y)
yex=cos(t*sqrt(a));

err=max(abs(y-yex));
disp(err);
hold on 
plot(t,yex,'g')