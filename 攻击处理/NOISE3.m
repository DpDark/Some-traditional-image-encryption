clear all;
file_name='lena.jpg';
Y=imread(file_name);
%����
Y=uint8(Y);
JY=imnoise(Y,'salt & pepper',0.5);
JY=double(JY);
figure(3);
imshow(JY,[]);
title('��ӽ���������ͼ��');
JY=uint8(JY);
imshow(JY);
%imwrite(JY,'peppers_vae_noise.png');