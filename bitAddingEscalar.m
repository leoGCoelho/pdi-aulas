pkg load image

a = imread('cameraman.tif')
subplot(1,2,1), imshow(a);

b = imadd(a, 100);
subplot(1,2,2), imshow(b);

octave