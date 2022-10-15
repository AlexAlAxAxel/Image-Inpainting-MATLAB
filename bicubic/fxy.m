function r = fxy(f, x, y)
    % =========================================================================
    % Aproximeaza derivata fata de x si y a lui f in punctul (x, y).
    % =========================================================================
    
    % TODO: Calculeaza derivata.
    aux1 = fy(f, x + 1, y);
    aux2 = fy(f, x - 1, y);
    r = (aux1 - aux2) / 2;
    
endfunction