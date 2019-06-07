pkg load image

In = imread('enamel.tif');
subplot(1,2,1), imshow(In), title("Original");

Bw =~im2bw(In,0.5); Bw = imfill(Bw,'holes');   % Aplica limiar e preenche os buracos
subplot(1,2,2), imshow(Bw), title("Limiar Aplicada");

[L, obj_0] = bwlabel(Bw);   % Rotula e conta numero de objetos
Struct =  strel('disk', 2, 0);   % Gera elemento estrutural em forma de disco de raio 2
erodes = 0;      % Numero de erosoes
obj = obj_0;    % Inicia o numero de objetos na imagem

while obj>0
erodes=erodes+1;
    Bw = imerode(Bw, Struct)
    [L, obj] = bwlabel(Bw);
    P(erodes) = obj_0 - obj;
    figure(2);imshow(Bw),title("Com Erosao");drawnow;
    sleep(0.25);   % Acrescenta 0.25 segundo apos a execucao da funcao
end

figure(2);subplot(1,2,1),plot(0:erodes,[0 P], 'ro'),title("Distribuicao Cumulativa");
axis square;axis([0 erodes 0 max(P)]);
xlabel('Size'); ylabel('Particles Removed')
subplot(1,2,2),plot(diff([0 P]), 'k*'),title("Distribuicao Cumulativa");axis square;