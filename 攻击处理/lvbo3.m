clear all;
% read in watermarked image
file_name='peppers_vae.png';
Y=imread(file_name);

%�˲�
Y=uint8(Y);
H=fspecial('gaussian',[5,5],1);%��˹��ͨ�˲�
Y=imfilter(Y,H);
%Y=medfilt2(Y,[5,5]);%��ֵ�˲�
%Y=wiener2(Y,[5,5]);%����Ӧ�˲�

figure(1);
imshow(Y,[]);
%title('��ֵ�˲�');
%Y=uint8(Y);
%imwrite(Y,'lvbo.bmp','bmp');