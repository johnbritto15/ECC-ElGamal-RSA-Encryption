clc;
close all;
pic1=imread('cameraman.tif');
%pic2=rgb2gray(pic1);
%pic1=imread('2.bmp');
%pic2=pic1;
subplot(1,3,1)
%pic2=rgb2gray(pic1);
imshow(pic1)
title('original image');

[m n]=size(pic1);
k=pic1;

k=double(k);

p=11;
q=23;
n1=p*q;
s=(p-1)*(q-1);
for i=2:s
   y =gcd(s,i);
   if y==1
       e=i;
       break;
   end
end


d=powermod(e, -1, s);


for i=1:m
    for j=1:n
       me=k(i,j);
        c(i,j)=powermod(me,e,n1);
    end
end
subplot(1,3,2)
imshow(uint8(c));
title(' Encrypted Template')

%decryption
for i=1:m
    for j=1:n
        l=c(i,j);
        r(i,j)=powermod(l,d,n1);
    end
end
r=medfilt2(r);
subplot(1,3,3)
imshow(uint8(r))
title(' Decrypted Template')


