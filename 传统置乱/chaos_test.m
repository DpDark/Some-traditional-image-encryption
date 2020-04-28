clear ,close all
picture=imread('lena.jpg');
%����
[M,N]=size(picture);
x=0.1;
u=4;
%����500�Σ��ﵽ��ֻ���״̬
for i=1:500
    x=u*x*(1-x);
end
 

%����һά�����������
A=zeros(1,M*N);
A(1)=x;
for i=1:M*N-1
A(i+1)=u*A(i)*(1-A(i));
end
%��һ������
B=uint8(255*A);
%ת��Ϊ��ά�����������
Imgn=reshape(B,M,N);

Rod=bitxor(picture,Imgn);%����������
Rod;
figure;
imshow(Rod);
imhist(Rod);
%����
h=bitxor(Rod,Imgn);
h;
figure;
imshow(h);