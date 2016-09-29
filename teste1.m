close all
clear all

im = imread('teste.jpg');
figure(1),imshow(im);

im1 = im2bw(im);
n=8;
L = bwlabel(im1,n);
[L,num] = bwlabel(im1,n);

num
cont = 1;
while cont <=num
%se objeto for igual a ao contador escreva em uma nova imagem
%tipo enquanto for 1 corte para uma nova imagem 
    for i=1:size(L,1)
        for j=1:size(L,2)
     
            if L(1,2) == cont
                
                
            end
            
            
        end
        
    end
    cont = cont +1
end
