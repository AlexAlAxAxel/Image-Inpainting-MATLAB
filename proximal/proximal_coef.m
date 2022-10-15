function a = proximal_coef(f, x1, y1, x2, y2)
    % =========================================================================
    % Calculeaza coeficientii a pentru Interpolarea Proximala intre punctele
    % (x1, y1), (x1, y2), (x2, y1) si (x2, y2).
    % =========================================================================
    
    % TODO: Calculeaza matricea A.
    
    % prima coloana
    A(1:4,1) = 1;
    
    % a doua coloana
    A(1:2,2) = x1;
    A(3:4,2) = x2;
    
    % a treia coloana
    A(1,3) = y1;
    A(2,3) = y2;
    A(3,3) = y1;
    A(4,3) = y2;
    
    % a patra coloana
    A(1:4,4) = A(1:4,2) .* A(1:4,3);
    
    % TODO: Calculeaza vectorul b.
    b = zeros(4,1);
    
    b(1) = f(y1, x1);
    b(2) = f(y2, x1);
    b(3) = f(y1, x2);
    b(4) = f(y2, x2);
    
    % TODO: Calculeaza coeficientii.
    a = zeros(4,1);
    a = A \ b;
    
endfunction
