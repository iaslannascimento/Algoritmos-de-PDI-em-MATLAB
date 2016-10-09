function result = descBrilho(pre);

im = pre;

im2 = imfill(im,'holes');%criamos uma nova imagem e nela aplicamos a função imfill q tampa os buracos da imagem

cont = 0;


    %nesse for comparamos a imagem im e a imagem im2 e contamos a area
    %diferente 
for i=1:size(im2,1)
    for j=0:size(im2,2)
        if im2(i,j) ~= im(i,j)
            cont=cont+1;
        end
    end
end

result = cont;


