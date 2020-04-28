clear all;
a=imread('test2.png');
for k=1:1000
  i=fix(rand*250);
  j=fix(rand*250);
  x(k)=a(i+1,j+1);
  y(k)=a(i+2,j+1);
end
sum=0.0;
sum=double(sum);
for i=1:1000
  sum=sum+double(x(i));
end
ex=sum/1000;
sum=0.0;
sum=double(sum);
for i=1:1000
  sum=sum+double(y(i));
end
ey=sum/1000;
sum=0.0;
sum=double(sum);
for i=1:1000
  sum=sum+double(x(i))*double(x(i));
end
ex2=sum/1000;
sum=0.0;
sum=double(sum);
for i=1:1000
   sum=sum+double(y(i))*double(y(i));
end
ey2=sum/1000;
dx=ex2-ex*ex;
dy=ey2-ey*ey;
sum=0.0;
sum=double(sum);
for i=1:1000
  sum=sum+double(x(i))*double(y(i));
end
exy=sum/1000;
cov=exy-ex*ey;
dx=double(dx);
dy=double(dy);
xg=cov/(sqrt(dx)*sqrt(dy))