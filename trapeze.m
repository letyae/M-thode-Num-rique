#I=100integrale(cos (100)) 0..1 
a=0;   b=1;    n=7*10^6;
h=(b-a)/n;
x=[a:h:b];
y=100*cos(100*x);
I=0; i=1;
while i<=n
  I=I+y(i);
  i++;
end
 I=h*I;
 err=I-sin(100);
 
 I
 err