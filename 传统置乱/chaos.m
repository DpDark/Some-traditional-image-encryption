a=imread('lena.jpg');
aa=chaos_image(a,0.1,4);
subplot(2,2,1);imshow(a);title('原始图像');
subplot(2,2,2);imshow(aa);title('置乱后的图像');
imwrite(aa,'lena_chaos.png'); 