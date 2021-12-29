#EXERCICE3
#Resolution par la methode du point fixe du systeme 
# x.^2-x-y=0;
# y.^2-x+y=0;
# Les fonctions g correspondant sont:
#g1xy=x.^2-y;
#g2xy=x-y.^2;

x1=[-1.5:0.1:2.5];
y1=x1.^2-x1;


y2=[-1.7:0.1:2.7];
x2=y2.^2+y2;


figure(1), plot(x1,y1,x2,y2);
grid on;

x0=1; y0=0.5;
#x0=0.5; y0=1;

eps=0.0001;


function [x,y,N]=PointFixe0(x0,y0,eps)
  N=0;
   x=sqrt(x0+y0);

    y=sqrt(x0-y0);  
  while (abs(x-x0)+abs(y-y0))>eps
         x0=x;
         y0=y;
         x=sqrt(x0+y0);
        # x=x0.^2-y0;
         #y=x0-y0.^2;

         y=sqrt(x0-y0);
         N=N+1;
  end   
end

[x,y,N]=PointFixe0(x0,y0,eps);

disp(['x= '  num2str(x)]);
disp(['y= '  num2str(y)]);
disp(['N= ' num2str(N)]);