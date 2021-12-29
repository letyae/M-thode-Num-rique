#Resolution par la methode de Newton de x.^2+y.^2=4 et x*y=1
prec=0.5;
err=0.8;

x=2;
y=3;



while err>prec 
      f1=x.^2+y.^2-4;
      f2=x*y-1;
      d=2*(x.^2-y.^2);
      
      dx=(-x*f1+2*y*f2)/d;
      dy=(y*f1-2*x*f2)/d;
      
      xp=x+dx;
      yp=y+dy;
      
      err=abs(x-xp)+abs(y-yp);
      x=xp;
      y=yp;
    end
   [x,y]
      

