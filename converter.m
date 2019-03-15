pkg load image

imfinfo('cameraman.png');
I1=imread('cameraman.png');
imwrite(I1,'cameraman.jpg','jpg');
imfinfo('cameraman.jpg')