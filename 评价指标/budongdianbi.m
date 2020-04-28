A1 = imread('lena.jpg');
A2 = imread('lena_arnold.png');
G = A1 - A2;
[m, n] = size(G);
cnt = 0;
for i=1:m
    for j=1:n
       if G(i,j) == 0
         cnt = cnt + 1;
       end
    end
end
disp('不动点比：')
disp(cnt/(m*n))

h = abs(A1 - A2);
sumh = sum(h);
sumhh = sum(sumh);
hh = sumhh/256/256;
disp('灰度变化平均值：')
disp(hh)