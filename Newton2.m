#EXERCICE4
#Resolution par la methode de Newton de l''equation x.^3+x-1;


eps=0.00001
x=[-3:0.1:3];
f=x.^3+x-1;
fprim=3*x.^2+1;


figure(1), plot(x,f);

# la courbe nous montre la presence d''une  racine: sur [-1,1] 

 

function [x1,N]=Newton(x0, eps)
  x1=x0-(x0.^3+x0-1)/(3*x0.^2+1);
  N=0;
  while abs(x1-x0)>eps
      x0=x1;
      x1=x0-(x0.^3+x0-1)/(3*x0.^2+1);
      N=N+1;
  end
end

x0=1;

 [x,N]=Newton(x0,eps);
disp(['Pour x0=1 '  ]);
disp(['x= '  num2str(x)]);
disp(['N= ' num2str(N)]);


