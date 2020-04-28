clear ,close all
picture=imread('lena.jpg');
%加密
[M,N]=size(picture);
x=0.1;
u=4;
%迭代500次，达到充分混沌状态
for i=1:500
    x=u*x*(1-x);
end
 

%产生一维混沌加密序列
A=zeros(1,M*N);
A(1)=x;
for i=1:M*N-1
A(i+1)=u*A(i)*(1-A(i));
end
%归一化序列
B=uint8(255*A);
%转化为二维混沌加密序列
Imgn=reshape(B,M,N);

Rod=bitxor(picture,Imgn);%异或操作加密
Rod;
figure;
imshow(Rod);
imhist(Rod);
%解密
h=bitxor(Rod,Imgn);
h;
figure;
imshow(h);