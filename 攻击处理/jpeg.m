Y=imread('peppers_vae.png');
%����ѹ��
Y=uint8(Y);
imwrite(Y,'peppers_vae_jpeg.jpg','jpeg','Quality',30);  
J=imread('peppers_vae_jpeg.jpg','jpeg');  
imshow(J);