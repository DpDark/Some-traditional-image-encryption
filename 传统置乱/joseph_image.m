function [ output_image ] = joseph_image( input_image,start,space )
[h,w]=size(input_image);
t=reshape(input_image,1,h*w);
value=h*w;
mark=zeros(1,value);%标记序列
scrambling=zeros(1,value);%置乱序列
count1=0;
count2=0;
flag=1;
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
    scrambling(1,count1)=t(1,start);
    if count1==value
        flag=0;
    end
end
output_image=reshape(scrambling,h,w);
output_image=uint8(output_image);   
end

