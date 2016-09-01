%esse algoritmo tem como objetivo contar a área de brilho de uma imagem
%caso, na aquisição do seu objeto ele venha com brilho e você queira contar essa area com brilho
close all
clear all

im =imread('OVO6.jpg'); % aqui entre as aspas simples vc coloca o caminho da imagem que você quer calcular a área do brilho
figure(1),imshow(im); %esse trecho é para exibir a imagem
%
im2 = im2bw(im); %Nessa linha estamos criado uma nova imagem que recebe a nossa primeira imagem tranformada em preto e branco
figure(2),imshow(im2);


im3 = imfill(im2,'holes'); %agora criamos um nova imagem que recebe a im2(na im2 foi aplicado o comando imfill que elimina os pequenos buracos da imagem que na verdade é o brilho)
figure(3),imshow(im3);


%agora temos um laço que vai comparar a imagem im2( que está só em preto e branco) com a imagem im3(que tem a mesma imagem só que aplicado o comando imfill)
cont = 0; %esse contador contará a área diferente entre essas duas imagens
for i=1:size(im3,1)
    for j=1:size(im3,2)
        if im2(i,j)~= im3(i,j)
            cont = cont+1;
        end
    end
end

cont
