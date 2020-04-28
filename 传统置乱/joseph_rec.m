img=imread('joseph_lvbo.png');
%img=J;
[h,w]=size(img);
t=reshape(img,1,h*w);
for i=1:h*w
    a(i)=i;
end
value=h*w;
mark=zeros(1,value);%标记序列
scrambling=zeros(1,value);%置乱序列
count1=0;
count2=0;
flag=1;
start=2000;
space=3000;
while flag == 1
    start=mod(start,value);
    if start==0
        start=value;
    end
    while count2~=space
        while mark(1,start)==1
            start=start+1;
            start=mod(start,value);
            if start==0
                start=value;
            end
        end
        count2=count2+1;
        start=start+1;
        start=mod(start,value);
        if start==0
            start=value;
        end
    end
    start=mod(start-1+value,value);
    if start==0
        start=value;
    end
    count2=0;
    count1=count1+1;
    mark(1,start)=1;
    scrambling(1,count1)=a(1,start);
    if count1==value
        flag=0;
    end
end
tmp=zeros(1,h*w);
for i=1:h*w
    tmp(scrambling(i))=t(i);
end
rec=reshape(tmp,h,w);
rec=uint8(rec);  
%imwrite(rec,'joseph_rec.png');


