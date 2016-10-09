function result = descForma(mascara)%recebemos uma imagem
cont = 0;%%criamos um contador

im2 = im2bw(mascara);%transformamos a imagem em preto e branco

c = corner(im2,'Harris');%aplicamos a função corner para sabermos a quantidade de curvas que tem a imagem

imshow(im2);
hold on
plot(c(:,1), c(:,2), 'r*');
cont = length(c); 

result = cont;