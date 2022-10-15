function out = proximal_rotate_RGB(img, rotation_angle)
    % =========================================================================
    % Aplica Interpolarea Proximala pentru a roti o imagine RGB cu un unghi dat.
    % =========================================================================
    
    % TODO: Extrage canalul rosu al imaginii.
    red = img(:, :, 1);
    
    % TODO: Extrage canalul verde al imaginii.
    green = img(:, :, 2);
    
    % TODO: Extrage canalul albastru al imaginii.
    blue = img(:, :, 3);
    
    % TODO: Aplica rotatia pe fiecare canal al imaginii.
    red_ref = proximal_rotate(red, rotation_angle);
    green_ref = proximal_rotate(green, rotation_angle);
    blue_ref = proximal_rotate(blue, rotation_angle);
    
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out(:,:,1) = red_ref;
    out(:,:,2) = green_ref;
    out(:,:,3) = blue_ref;
    
endfunction