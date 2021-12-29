# calcul de l''integrale par la methode simpson

#I=100integrale(cos (100)) 0..1 
a=0;   b=1;    n=7*10^6; p=n/2+1
h=(b-a)/n;
x=[a:h:b];
y=100*cos(100*x);
y1=y(1);
yn=y(n+1);

s1=0;

for j=1:p
   I=0; i=1;
   s1=s1+y(2*j);
end

s2=0;

for j=1:p-1
  s2=s2+y(2*j+1);  
end
   
  
 I=(h/3)*(y1+4*s1+2*s2+yn);
 
 err=I-sin(100);
 
 I
 err