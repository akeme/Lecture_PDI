%% Initilzations
% Clean command window, remove all variables from workspace, close all
% figures, guis, etc.

clc
clear all
close all

%% Load image:

% Load image to a variable.
[img, map] = imread('../figs/lena_color_512.tif');

%% Show images in two ways:
figure;
image(img)

figure;
imshow(img)

%% Show image using different channels:

[~, ~, channels] = size(img)

c = {'R', 'G', 'B'};

figure;

for k=1:channels

    subplot(1,3,k)
    imshow(img(:,:,k))
    title(c{k}, 'FontSize', 20)

end

%% Convert image to Grayscale

figure;
imshow(rgb2gray(img))
