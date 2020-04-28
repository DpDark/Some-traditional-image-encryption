a=imread('peppers.png');
b=imread('peppers_vae.png');
c=imread('peppers_vae_rec.png');
subplot(2,3,1);imshow(a);title('Ô­Ê¼Í¼Ïñ');
subplot(2,3,2);imshow(b);title('¼ÓÃÜÍ¼Ïñ');
subplot(2,3,3);imshow(c);title('½âÃÜÍ¼Ïñ');
subplot(2,3,4);imhist(a);
subplot(2,3,5);imhist(b);
subplot(2,3,6);imhist(c);

