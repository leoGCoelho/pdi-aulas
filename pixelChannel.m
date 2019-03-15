pkg load image

B=imread('cell.tif');
D=imread('onion.jpg');
B2=imread('cell.tif');
D2=imread('onion.jpg');

B(25,50);
B(25,50)=255;

D(25,50,:);
D(25,50,1);
D(25,50,:) = [255,255,255];

subplot(2,2,1);imshow(B2);axis image;
subplot(2,2,2);imshow(D2);axis image;
subplot(2,2,3);imshow(B);axis image;
subplot(2,2,4);imshow(D);

octave