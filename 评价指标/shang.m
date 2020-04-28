name='test.png';
I=imread(name);
[Hight,Width,Depth]=size(I);
N_pixels=Hight*Width;
N_grays=256;
I=double(I)+1;%将灰度值从0～255变到1～256
%熵赋初值
H=zeros(Depth,1);
%求每一个符号的出现概率
P=zeros(1+Depth,N_grays);%第一行是序号，第2到1＋Depth行每行对应一个颜色
P(1,:)=[1:N_grays];
for i=1:Hight
    for j=1:Width
        for k=1:Depth
            rank=I(i,j,k);
            P(1+k,rank)=P(1+k,rank)+1;
        end
     end
end
P(2:1+Depth,:)=P(2:1+Depth,:)/N_pixels;
for i=1:N_grays
    for j=1:Depth
        if P(1+j,i)~=0
            h=-P(1+j,i)*log2(P(1+j,i));
            H(j)=H(j)+h;
        end
    end
end 