% Sample script  that shows how to automate running problem solutions
close all;
clear;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% a) Load an image using the imread command 
peppers = imread("peppers3.tif");
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% b) Display original image in the first spot of a 2 x 3 a grid layout
%    Check the imshow and subplot commands.
subplot(2,3,1);
imshow(peppers)
pause();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% c) Display a gray scale version of the image in position 2 of the grid.
%    help rgb2gray
peppers_gray = rgb2gray(peppers);
subplot(2,3,2);
imshow(peppers_gray)
pause();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% d) Generate a new figure and ask user to manually select a region of the
%    image. Display the subimage in position 3 of the grid.
%    Hint--> getrect()

% Get user input on a newly dislayed image
figure(2)
imshow(peppers)
rect = int32(getrect());

% Make grid the current figure
figure(1)
subplot(2,3,3);

% Display selected region. Make sure to apply the cut
% over all 3 channels.
smallerpeppers = peppers(rect(2):(rect(2) + rect(4)), ...
    rect(1):(rect(1) + rect(3)), ...
    :);
imshow(smallerpeppers)
pause();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% e) Create a function J = luminance_change(I, option, value) such that:
%   * When given the option 'c', image I's contrast will be modified by
%     the given value. Simple multiplication will achieve this.
%   * When given the option 'b', image I's brightness will be modified by
%     the given value. Simple addition will achieve this.
%  
%   Showcase your function by filling positions 4 and 5 in the grid

function [newI] = luminance_change(I, option, value)
%LUMINANCE_CHANGE Modify the luminance of an image
%   Takes in an image in I
%   Takes in an option ('c' or 'b')
%   c changes the contrast of the image by value
%   b changes the brightness of the image by value
    if option == "c"
        newI = value * I;
    elseif option == 'b'
        newI = value + I;
    end

end

% Contrast change
subplot(2,3,4);
newI = luminance_change(peppers, 'c', 2);
imshow(newI)
pause();

% Brightness change
subplot(2,3,5);
newI = luminance_change(peppers, 'b', 100);
imshow(newI)
pause();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% f) BONUS: Display a version of the image after it's been blurred using a
%    Gaussian filter. Hint: imgaussfilt()
subplot(2,3,6);
blurredI = imgaussfilt(peppers, 8);
imshow(blurredI);



