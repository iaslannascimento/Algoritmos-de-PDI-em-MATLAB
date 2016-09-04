close all
clear all

im = imread('OVO10.jpg');
figure(1),imshow(im);
BW = im2bw(im);
n=8;
%L = bwlabel(BW, n)
[L, num] = bwlabel(BW, n)