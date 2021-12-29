#Resolution de l''equation ypp + 3*yp + 2*y = 0 , y(0) = 0 , yp(0) = 1,5.
#( yp=derive prermiere de y)
#( ypp=derive seconde de y)
# par la methode d''EULER 
#On a pose u=yp 
clear all, close all,clc,
to=0;
%po=0;%to=0 y(1)=0 et po=0, u(1)=1.5
h=10^(-3);
N=10000;
t1=to+N*h;
t=[to:h:t1];
%p1=po+N*h;
%p=[to:h:p1];
y=zeros(1,N+1);
u=zeros(1,N+1);
y(1)=0;
u(1)=1.5;
for j=1:N
 y(j+1)=y(j)+h*2*u(j)/t(j);
 u(j+1)=u(j)+h*(-3*u(j)-2*y(j));
end
plot(t,y)
yex=1.5*(exp(-t)-exp(-2*t));
hold on 
plot(t,yex,'g')