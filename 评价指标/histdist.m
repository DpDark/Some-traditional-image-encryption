M=imread('lena.jpg');
N=imread('test.png');
[Count1,x]=imhist(M);
[Count2,x]=imhist(N);
Sum1=sum(Count1);Sum2=sum(Count2);
Sumup = sqrt(Count1.*Count2);
SumDown = sqrt(Sum1*Sum2);
Sumup = sum(Sumup);
figure(1);
subplot(2,2,1);imshow(M);
subplot(2,2,2);imshow(N);
subplot(2,2,3);imhist(M);
subplot(2,2,4);imhist(N);
HistDist=1-sqrt(1-Sumup/SumDown)