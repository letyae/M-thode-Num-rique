#Kranck Nicholson
%clear all, close all,clc,
to=0;
h=10^(-3)/2;
prec=0.01*(h^(3));
N=998*2; 
t1=to+N*h;
t=[to:h:t1];
y=zeros(1,N+1);
y(1)=4;
for j=1:N;
err=1;
y(j+1)=y(j);
while err>prec
y1=y(j)+0.5*h*(y(j)*sqrt(y(j))+y(j+1)*sqrt(y(j+1)));
err=abs(y1-y(j+1));
y(j+1)=y1;
end
endfor
plot(t,y)
hold on 
plot(t,4./(t-1).^2,'g')