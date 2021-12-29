#EXERCICE4
#Resolution par la methode de Newton de l''equation 2sin(x)=x
#
#
#

eps=0.00001
x=[-3:0.1:3];
f=2*sin(x)-x;
fprim=2*cos(x)-1;


figure(1), plot(x,f);

# la courbe nous montre la presence de 3 racines: sur [-2,-1], [-0.5,0.5] et sur [1,2] 

 

function [x1,N]=Newton(x0, eps)
  x1=x0-(2*sin(x0)-x0)/(2*cos(x0)-1);
  N=0;
  while abs(x1-x0)>eps
      x0=x1;
      x1=x0-(2*sin(x0)-x0)/(2*cos(x0)-1);
      N=N+1;
  end
end

x0=1;

 [x,N]=Newton(x0,eps);
disp(['Pour x0=1 '  ]);
disp(['x= '  num2str(x)]);
disp(['N= ' num2str(N)]);

disp(['########################################']);

x0=0.1;

 [x,N]=Newton(x0,eps);
disp(['Pour x0=0.1 '  ]);
disp(['x= '  num2str(x)]);
disp(['N= ' num2str(N)]);

disp(['########################################']);



x0=-1;
disp(['Pour x0=-1 '  ]);

[x,N]=Newton(x0,eps);


disp(['x= '  num2str(x)]);
disp(['N= ' num2str(N)]);
      
