pkg load image

f = imread('objetos1.bmp');
grf = graythresh(f);

g = im2bw(f, grf);
gc = ~g
D = bwdist(gc);
L = watershed(-D);
w = L == 0;
g2 = g | w;

subplot(2,2,1);imshow(f)
subplot(2,2,2);imshow(g)
subplot(2,2,3);imshow(gc)
subplot(2,2,4);imshow(w)
imview(g2)