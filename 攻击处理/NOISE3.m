clear all;
file_name='lena.jpg';
Y=imread(file_name);
%¼ÓÔë
Y=uint8(Y);
JY=imnoise(Y,'salt & pepper',0.5);
JY=double(JY);
figure(3);
imshow(JY,[]);
title('Ìí¼Ó½·ÑÎÔëÉùµÄÍ¼Ïñ');
JY=uint8(JY);
imshow(JY);
%imwrite(JY,'peppers_vae_noise.png');