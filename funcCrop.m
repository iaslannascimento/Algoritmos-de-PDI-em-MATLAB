function result=funcCrop(im,im2)

im3 = ~im2bw(im2);
%Label the connected components
[Label,Total]=bwlabel(im3,4);
%figure(1),imshow(im2); title('Labelled Image');

%Rectangle containing the region
Sdata=regionprops(Label,'BoundingBox');
 
%criando a pasta com base na data atual e hora.

time = clock;
data = date;
mascara = sprintf('%d-%d-%d',time(4),time(5),round(time(6)));
namePasta = strcat(data,'_',mascara);

pasta = strcat('C:\Users\IASLAN\Documents\algoritmos de pdi\pré\',namePasta); %nome da pasta
mkdir(pasta);%criando diretorio

%Crop all the Coins 
for i=1:Total
    Img=imcrop(im,Sdata(i).BoundingBox);
    filename = strcat(pasta,'\',int2str(i),'.jpg'); 
    imwrite(Img,filename);
    Name=strcat('Object Number:',num2str(i));
   % figure,imshow(Img); title(Name);
end
result = Total;