a=imread('peppers.png');
b=imread('peppers_vae.png');
c=imread('peppers_vae_rec.png');
subplot(2,3,1);imshow(a);title('ԭʼͼ��');
subplot(2,3,2);imshow(b);title('����ͼ��');
subplot(2,3,3);imshow(c);title('����ͼ��');
subplot(2,3,4);imhist(a);
subplot(2,3,5);imhist(b);
subplot(2,3,6);imhist(c);

