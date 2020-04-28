function [ u ] = difference_average( input_image )
imdata=imread(input_image);
[m,n]=size(imdata);
x = imdata
b = -ones(3)
b(1:2:end) = 0
b(5) = 4
filter2(b,x);
x=double(x);
s = conv2(x,[0 -1 0;-1 4 -1;0 -1 0],'same');
s([1 end],:) = s([1 end],:) - x([1 end],:);
s(:,[1 end]) = s(:,[1 end]) - x(:,[1 end]);
s=abs(s);
u=sum(s(:))/(m*n);
end

