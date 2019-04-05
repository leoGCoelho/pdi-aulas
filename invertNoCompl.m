pkg load image

In1 = imread('cameraman.tif');
In2 = imread('homer_brain_scan.jpg');

Out1 = 255 - In1;

Out2(:,:,1) = 255 - In2(:,:,1);
Out2(:,:,2) = 255 - In2(:,:,2);
Out2(:,:,3) = 255 - In2(:,:,3);

OutR = rgb2gray(Out2);

subplot(2,3,1), imshow(In1); title('Source 1'), axis image;
subplot(2,3,4), imshow(In2); title('Source 2');
subplot(2,3,2), imshow(Out1); title('Inverted 1');
subplot(2,3,5), imshow(Out2); title('Inverted 2');
subplot(2,3,6), imshow(OutR); title('Inverted Gray');