clc;
close all;
clear all;

x=imread('image3.jpeg'); % Read the input image
figure,imshow(x); 

RGB = imread('image3.jpeg'); 

I = im2gray(RGB); %RGB to gray conversion

imshow(I) % To show the input image

F=dct2(I); %Perform a 2-D DCT of the grayscale image using the dct2 function.


imshow(log(abs(F)),[]) %Display the transformed image using a logarithmic scale
colormap parula
colorbar

F(abs(F) < 10) = 0;

%Reconstruct the image using the inverse DCT function idct2

K = idct2(F); 
K = rescale(K); % Rescale the values to the range [0, 1] expected of images of data type doubl

figure,imshow(K);



