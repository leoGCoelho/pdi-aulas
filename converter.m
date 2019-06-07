pkg load image

imfinfo('enamel.png');
I1=imread('enamel.png');
imwrite(I1,'enamel.tif','tif');
imfinfo('enamel.tif')