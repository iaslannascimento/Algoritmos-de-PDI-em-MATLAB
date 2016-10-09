function result = descCor(mascara, im)%recebemos duas imagens
%criamos três variaveis que vão recer as cores R ,G,B em determinado pixel
    corR = 0;
    corG = 0;
    corB = 0;
    
    cont = 0;
    
    %criamos um for que vai somar os pixels iguais a zero em cada camada e
    %armazenara o valor em cada uma das tres variaveis acima 
    for i=1:size(im,1)
        for j=1:size(im,2)
            if (mascara(i,j)==0)
                corR = corR+ sum(im(i,j,1));
                corG = corG + sum(im(i,j,2));
                corB = corB + sum(im(i,j,3));
                cont = cont + 1;
            end
        end
    end
    corR
    corG
    corB
    cont
    cores(1) = corR/cont;
    cores(2) = corG/cont;
    cores(3) = corB/cont;


result = cores; %retoma um vetor com os valores das tres variaveis