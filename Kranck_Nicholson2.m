clear all, close all,clc,
to=0;
%po=0;%to=0 y(1)=0 et po=0, u(1)=1.5
N=10^(4);
ti=0; tf=10;
h=(tf-ti)/N;

a=1;  prec=h^4;
t=[ti:h:tf];
%p1=po+N*h;
%p=[to:h:p1];
y=zeros(1,N+1);
u=zeros(1,N+1);
y(1)=1;
u(1)=0;


for j=1:N
   y(j+1)=y(j);
   up(j+1)=u(j);
   
   err=1;
   
 while err>prec 
   
   yp=y(j+1);
   up=u(j+1);
   y(j+1)=y(j)+0.5*h*(u(j)+u(j+1));
   u(j+1)=u(j)+0.5*h*(-a*y(j)-a*y(j+1));
   err=(abs(yp-y(j+1)) + abs(up-u(j+1)))/100;
  end 

 #y(j+1)=y(j)+h*u(j);
 #u(j+1)=u(j)+h*(-a*y(j));
end
hold off
plot(t,y,'b')
yex=cos(t*sqrt(a));

err=max(abs(y-yex))/100;
disp(err);
hold on 
plot(t,yex,'r')