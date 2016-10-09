function result = descArea(im)%recebemos uma imagem

    area = 0;%um contador para contar a area 
    
    %nesse for tudo q for igual a 255 é ovo e contamais um na area
    for i=1:size(im,1)
        for j=1:size(im,2)
            if (im(i,j)==255)
                area = area + 1;
            end
        end
    end


result = area;