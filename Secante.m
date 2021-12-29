#Exercice6
#Resolvons 2*tan(x)-exp(-x)=0 
x=[-7:0.1:7];
f=2*tan(x)-exp(-x);

figure(1), plot (x,f);


x0=-4.7;
x1=-4;
eps=0.00001;

function [N,x2]=Secante(x0,x1,eps)
   N=0;
   x2 = x1-(2*tan(x1)-exp(-x1))*(x0-x1)/(2*tan(x0)-exp(-x0)-2*tan(x1)+exp(-x1));
  while abs(x2-x1)>eps
    x0=x1;
    x1=x2; 
    x2 = x1-(2*tan(x1)-exp(-x1))*(x0-x1)/(2*tan(x0)-exp(-x0)-2*tan(x1)+exp(-x1));
    N=N+1;  ### Nbre d''iteration
  
  end
end

[N,t]=Secante(x0,x1,eps);
disp(['x0=',num2str(t)]);
disp(['N=',num2str(N)]);
