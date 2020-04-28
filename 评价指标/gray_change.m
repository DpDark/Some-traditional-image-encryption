function [scrambling_degree] = gray_change(image,image_scrambling)
a1=imread(image);
a2=imread(image_scrambling);
[M,N]=size(a1);
syms a1(i,j)
for i=1:M
    for j=1:N
        scrambling_degree=(symsum(power(a1(i,j),2)))/(symsum(power(a2(i,j)-a1(i,j)),2));
    end
end
end

