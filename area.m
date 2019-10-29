close all
clear all

im = imread('nomeimg.*')

    area = 0;

    for i=1:size(im,1)
        for j=1:size(im,2)
            if (im(i,j)==255)
                area = area + 1;
            end
        end
    end
area
