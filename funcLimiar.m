function result = limiar(hist)
    %% CALCULANDO AS DIFERENÇAS (DISTÂNCIAS) ENTRE OS PONTOS DO HISTOGRAMA
    % 1 - Descartando os pontos subsequentes que são menores que os
    % anteriores
    for i=1:(size(hist,1)-1)
        if(hist(i+1)<hist(i))
            hist(i+1)=hist(i);
        end
    end
    % 2 - Criando um vetor de distâncias entre cada par de ponto subsequente e
    % anterior considerando faixas de 20 tons de cinza
    distancias = zeros(13,2);
    %distancias
    somad = 0;
    cont = 0;
    f=1;
    for i=1:(size(hist,1)-1)
        somad = somad + (hist(i+1)-hist(i));
        cont = cont + 1;
        if(cont==20) %faixa de 20 tons de cinza
            distancias(f,1)=(somad/cont)*100;
            distancias(f,2)=cont*f;
            cont = 0;
            somad = 0;
            f = f + 1;
        end
    end
    
     
    %% CALCULANDO AS DIFERENÇAS ENTRE AS FAIXAS DE 20 TONS DE CINZA
    diferencas = zeros(13,2);
    %diferencas
    for i=1:(size(distancias,1)-1)
        diferencas(i,1)=distancias(i+1,1)-distancias(i,1);
        diferencas(i,2)=distancias(i,2);
    end
     
    % Ordenando para encontrar a maior diferença entre as faixas (subida
    % abrupta da curva do histograma)
    % Ordenando
    for cont=1:size(diferencas,1)
        for i=1:(size(diferencas,1)-1)
            if (diferencas(i+1,1)>diferencas(i,1))
                aux = diferencas(i+1,1);
                diferencas(i+1,1) = diferencas(i,1);
                diferencas(i,1) = aux;
                aux = diferencas(i+1,2);
                diferencas(i+1,2) = diferencas(i,2);
                diferencas(i,2) = aux;
            end
        end
    end
        
    %diferencas
    limiar = diferencas(1,2);
    %limiar

result = limiar;        
    
    
    
