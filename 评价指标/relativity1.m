function F=relativity1(input,number)
% number==0,��ˮƽ��������֮�������ԣ�
% number==1����ֱ��������֮�������ԣ�
% number==2,��Խ�����������֮��������

%rand('twister',0.3);
if number==0;
  for k=1:8000
    i=fix(rand*250);
    j=fix(rand*250);
    x(k)=input(i+1,j+1);
    y(k)=input(i+2,j+1);
  end
elseif number==1;
  for k=1:8000
    i=fix(rand*250);
    j=fix(rand*250);
    x(k)=input(i+1,j+1);
    y(k)=input(i+1,j+2);
  end 
elseif number==2;
   for k=1:8000
    i=fix(rand*250);
    j=fix(rand*250);
    x(k)=input(i+1,j+1);
    y(k)=input(i+2,j+2);
   end;
end

sum1=0.0;sum2=0.0;
sum1=double(sum1);sum2=double(sum2);
for i=1:8000
    sum1=sum1+double(x(i));
    sum2=sum2+double(y(i));    
end
ex=sum1/8000;%��ֵ
ey=sum2/8000;

sum1=0.0;sum1=double(sum1);
for i=1:8000
    sum1=sum1+(double(x(i))-ex)*(double(y(i))-ey);
end
ez=sum1/8000;%����

sum1=0.0;sum1=double(sum1);
sum2=0.0;sum2=double(sum2);
for i=1:8000
    sum1=sum1+(double(x(i))-ex)^2;
    sum2=sum2+(double(y(i))-ey)^2;
end
ex2=sum1/8000;%��ĸ
ey2=sum2/8000;

F=ez/(sqrt(ex2)*sqrt(ey2));