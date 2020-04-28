t=[56 41 58 35 50 39 60 33;
   47 44 55 40 59 34 51 38;
   42 57 46 49 36 53 32 61;
   45 48 43 54 31 62 37 52;
   20 5 30 63 22 11 16 13;
   29 64 21 4 17 14 25 10;
   6 19 2 27 8 23 12 15;
   1 28 7 18 3 26 9 24;];
I=imread('knight_lvbo.png');
[height, width] = size(I);
heightsize=8;
widthsize=8;
num_i = height/heightsize;
num_j = width/widthsize;
iteration=100;
for n = 1:iteration
    k=1;
    for i = 1:num_i
        for j = 1:num_j
            temp{k}=I(((i-1)*heightsize+1):(i*heightsize), ((j-1)*widthsize+1):(j*widthsize));
            k=k+1;
        end
    end
    for i = 1:1024
        b{i}=zeros(8,8);
    end
    start=1;
    final=64;
    for i = num_i*num_j:-1:1
        for j = final:-1:start+1
            [row1,col1]=find(t==j);
            [row2,col2]=find(t==(j-1));
            b{i}(row2,col2)=temp{i}(row1,col1);
        end
        [row3,col3]=find(t==1);
        [row4,col4]=find(t==64);
        b{i}(row4,col4)=temp{i}(row3,col3);
    end
    p=1;
    for i = 1:num_i
        for j = 1:num_j
            I(((i-1)*heightsize+1):(i*heightsize), ((j-1)*widthsize+1):(j*widthsize))=b{p};
            p=p+1;
        end
    end
    

end
%imwrite(I,'lena_knight_rec.jpg');