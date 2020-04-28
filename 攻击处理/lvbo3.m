clear all;
% read in watermarked image
file_name='peppers_vae.png';
Y=imread(file_name);

%滤波
Y=uint8(Y);
H=fspecial('gaussian',[5,5],1);%高斯低通滤波
Y=imfilter(Y,H);
%Y=medfilt2(Y,[5,5]);%中值滤波
%Y=wiener2(Y,[5,5]);%自适应滤波

figure(1);
imshow(Y,[]);
%title('中值滤波');
%Y=uint8(Y);
%imwrite(Y,'lvbo.bmp','bmp');