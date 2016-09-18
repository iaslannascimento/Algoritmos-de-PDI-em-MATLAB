%pré-processamento 
close all
clear all
%primeira parte fechamento

im = imread('OVO10.jpg');%lendo imagem
figure(1),imshow(im);
%tramsformando as imagens em preto e branco
%im1 = im2bw(im);
im1 = im;

se = strel('disk',2);
im2 = imopen(im1,se);%erosão
figure(2),imshow(im2);
im2 = imclose(im2,se);%dilatação
figure(3),imshow(im2);


%Segunda parte Limiarização não fixa 
%im3 = imhist(im2);
%figure(7),plot(im3);

%terceira parte contagem de objetos

n=8;
[L, num] = bwlabel(im2, n);
num

%Cortar as imagens 

%gravar imagem no disco 





