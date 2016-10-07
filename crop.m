close all
clear all

im = imread('5.jpg');

%Convert the Image to binary
im1=~im2bw(im);
se = strel('disk',4);
im2 = imopen(im1,se);%erosão
 
%Fill the holes
%im2=imfill(im1,'holes');
 
%Label the connected components
[Label,Total]=bwlabel(im2,4);
figure(1),imshow(im2); title('Labelled Image');

%Rectangle containing the region
Sdata=regionprops(Label,'BoundingBox');
 
%criando a pasta com base na data atual e hora.

time = clock;
data = date;
mascara = sprintf('%d-%d-%d',time(4),time(5),round(time(6)));
namePasta = strcat(data,'_',mascara);

pasta = strcat('C:\Users\Joel\Documents\TADS\2016.2\PA2\',namePasta); %nome da pasta
mkdir(pasta);%criando diretorio

%Crop all the Coins 
for i=1:Total
    Img=imcrop(im,Sdata(i).BoundingBox);
    filename = strcat(pasta,'\',int2str(i),'.jpg'); 
    imwrite(Img,filename);
    Name=strcat('Object Number:',num2str(i));
    figure,imshow(Img); title(Name);
end


