close all;
clear all;
clc;
 
img=imread('peppers.png');
[h, w]=size(img);
imgn=imread('peppers_vae_lvbo_rec.png');
img=double(img);
imgn=double(imgn);
 
B=8;                %����һ�������ö��ٶ�����λ
MAX=2^B-1;          %ͼ���ж��ٻҶȼ�
MSE=sum(sum((img-imgn).^2))/(h*w);     %������
PSNR=20*log10(MAX/sqrt(MSE));           %��ֵ�����
display(MSE);

