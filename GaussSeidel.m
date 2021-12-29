# Resolution dun  systeme d''equation aX=b, a et b sont des matrice et X la matrice
# des inconnues par la methode de Gauss Seidel

tic
#a=[10,2,3; 2,30,6;7,8,9];
#a=[1,2,3;2,3,6;7,8,9];
a=[1,2,-2;1,1,1;2,2,1];
b=[2;1;3];
x=[1,1,1];
#xp=[2,2,2];
xp(1)=(b(1)-a(1,2)*x(2)-a(1,3)*x(3))/a(1,1);
xp(2)=(b(2)-a(2,1)*xp(1)-a(2,3)*x(3))/a(2,2);
xp(3)=(b(3)-a(3,1)*xp(1)-a(3,2)*xp(2))/a(3,3);

eps=0.000001;

while abs(xp(1)-x(1)) > eps || abs(xp(2)-x(2)) > eps || abs(xp(3)-x(3)) > eps
      x=xp;
     
      
      xp(1)=(b(1)-a(1,2)*x(2)-a(1,3)*x(3))/a(1,1);
      
      xp(2)=(b(2)-a(2,1)*xp(1)-a(2,3)*x(3))/a(2,2);
      xp(3)=(b(3)-a(3,1)*xp(1)-a(3,2)*xp(2))/a(3,3);
      
     
      end 
      
      
[ x(1), x(2), x(3)]     
toc