function [ output_image ] = chaos_rec( input_image,x0,u )
[h,w]=size(input_image);
x=x0;
for i=1:500
    x=u*x*(1-x);
end
A=zeros(1,h*w);
A(1)=x;
for i=1:h*w-1
    A(i+1)=u*A(i)*(1-A(i));
end
B=uint8(255*A);
chaos=reshape(B,h,w);
xor=bitxor(input_image,chaos);
output_image=xor;
end