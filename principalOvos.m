%veja esse arquivo como a classe principal que chama todos os outros
%métodos
clear all
close all

im = imread('ovo.jpg');

%canal G
g = im(:,:,2);
figure(1)
imshow(g)
figure(2)
imshow(im)
    
%limiarização
pre = g;
for i=1:size(g,1)
    for j=1:size(g,2)
        if (g(i,j)<128)
            pre(i,j)=0;
        else
            pre(i,j)=255;
        end
    end
end

pre = double(pre);
pre

% descritor area
resultArea = descArea(pre);
resultArea
            
% descritor cor
resultCor = descCor(pre,im);
resultCor

% descritor convexidade
resultConv = descConv(pre);
resultConv

%descritor perimetro
resultPerimetro = descPerimetro(pre);
resultPerimetro

%descrito de brilho

resultBrilho = descBrilho(pre,mascara);
resultBrilho


%descritor de quantidade de erosão 
resultErosao = descErsao(pre);
resultErosao
