a=imread('lena.jpg');
aa=chaos_image(a,0.1,4);
subplot(2,2,1);imshow(a);title('ԭʼͼ��');
subplot(2,2,2);imshow(aa);title('���Һ��ͼ��');
imwrite(aa,'lena_chaos.png'); 