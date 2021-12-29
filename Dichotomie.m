#TD NO1
Resolution d'' equation par la methode de dichotomie
#Exercice 1
#f=x^3-3*x+1
#f est continue et strictement croissnte sur ]- infini , 1]
#f est continue et strictement decroissnte sur [-1 , 1]
#f est continue et strictement croissnte [1 ,+ infini[
#La fonction imf retourne l''image par f d''un reelle pris en argument

err=0.00000000000005

#a=-1; b=1;
a=-10; b=-1;
c=(a+b)/2;

function r=imf(x)
  r= x^3-3*x+1;
endfunction



  
 while err< abs(b-a)
       c=(a+b)/2;
  if (imf(a) * imf(c)<0) || (imf(a) * imf(c)==0)
    
       b=c; 
    else 
        a=c;
   endif
endwhile
 
 disp(['a= '  num2str(a)]);
 disp(['b= ' num2str(b)]);
 disp(['c= ' num2str(c)]);

