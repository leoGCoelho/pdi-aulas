pkg load image

In = imread('texto.bmp');
subplot(2,2,1), imshow(In), title('Original');
hf = imhist(In);
subplot(2,2,2), plot(hf);

T1 = 0.5*(double(min(In(:)))+double(max(In(:))));
done = false;
while ~done
  g = In >= T1;
  T1next = 0.5*(mean(In(g)) + mean(In(~g)));
  done = abs(T1 - T1next) < 0.5;
  T1 = T1next;
end

T2 = T1/255
s1 = im2bw(In,T2);
subplot(2,2,3), imshow(s1), title('Thresholding automatico');
subplot(2,2,4), plot(s1);

# 2o metodo (utilizando so a funcao graythresh)
#T = graythresh(In);
#s1 = im2bw(In,T);
#subplot(2,2,4), imshow(s1), title('Thresholding automatico');
#subplot(2,2,4), plot(s1);