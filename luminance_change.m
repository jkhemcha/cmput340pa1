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

