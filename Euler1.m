#Resolution de l''equation yp=2*y/t  ( yp=derive prermiere de y)
#condition intiale y(0.5)=1.5 par la methode d''EULER 

clear all, close all,clc
to=0.5;
h=10^(-3);
N=10000;
t1=to+N*h;
t=[to:h:t1];
y=zeros(1,N+1);
y(1)=1.5;
for j=1:N
 y(j+1)=y(j)+h*2*y(j)/t(j);
end
plot(t,y)
hold on 
plot(t,6*t.^2,'r')