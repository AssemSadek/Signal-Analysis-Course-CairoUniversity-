clear;
clc;
close all
%Read Original image
Img = imread('hidden_img.png');

%Show Original Image
subplot(1,2,1);
imshow(Img);
title('Original Image');

% Getting Odd part
Imginv=fliplr(Img);
ImgOdd=(Img-Imginv)*(0.5);

% Getting the first half part of the odd part
[x,y,z]=size(ImgOdd);
FinalImage=20*ImgOdd(:,1:y/2,:);

%show Hidden Image
subplot(1,2,2);
imshow(FinalImage);
title('Hidden Image');


