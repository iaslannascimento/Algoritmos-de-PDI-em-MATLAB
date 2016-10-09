function result = descConv(mascara)%recebemos uma imagem

    cont = 0;%novamente criamos um contador 
    
    CH = bwconvhull(mascara);%criamos uma nova variavel que recebe a imagem na qual foi aplicado a função bwconvhull
    figure(4)
    imshow(CH)

    %nesse for comparamos a imagem mascara e a imagem CH e contamos a area
    %diferente 
    for i=1:size(mascara,1)
        for j=1:size(mascara,2)
            if ((CH(i,j)==1) && (mascara(i,j)==0))
                cont = cont + 1;
            end
        end
    end
    

result = cont;