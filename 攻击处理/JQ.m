clear all;
file_name='lena_vae.png';
Y=imread(file_name);
Y(50:120,50:120)=0;
Y(150:250,150:180)=0;
Y(140:200,200:250)=0;
imshow(Y);
