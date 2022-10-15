function out = proximal_resize_RGB(img, p, q)
    % =========================================================================
    % Redimensioneaza imaginea img astfel încât aceasta save fie de dimensiune p x q.
    % Imaginea img este colorata.
    % =========================================================================

    % TODO: Extrage canalul rosu al imaginii.
    red = img(:,:,1);
    
    % TODO: Extrage canalul verde al imaginii.
    green = img(:,:,2);
    
    % TODO: Extrage canalul albastru al imaginii.
    blue = img(:,:,3);
    
    % TODO: Aplica functia proximal pe cele 3 canale ale imaginii.
    red_resize = proximal_resize(red, p, q);
    green_resize = proximal_resize(green, p, q);
    blue_resize = proximal_resize(blue, p, q);
    
    % TODO: Formeaza imaginea finala concatenând cele 3 canale de culori.
    out(:,:,1) = red_resize;
    out(:,:,2) = green_resize;
    out(:,:,3) = blue_resize;
    
endfunction
