function result = descPerimetro(mascara)%recebemos uma imagem
   

im = bwperim(mascara);%aqui aplicamos a função do perimetro
cont = 0;%criamos um contador para contar o perimetro
for i=1:size(im,1)
    for j=1:size(im,2)
        if(im(i,j)==1)
            cont = cont +1;%percorremos a imagem e sempre contando os pixels que formam o perimetro
        end
    end
end


figure(3)
imshowpair(mascara,im,'montage')%aqui é só pra exibir


result = cont;%retornamos o contador 