pkg load image

D=imread('onion.png');

Dred=D(:,:,1);
Dgreen=D(:,:,2);
Dblue=D(:,:,3);

subplot(2,3,2);imshow(D);title('original'),axis image;
subplot(2,3,4);imshow(Dred);title('red');
subplot(2,3,5);imshow(Dgreen);title('green');
subplot(2,3,6);imshow(Dblue);title('blue');

octave