function out = proximal_2x2(f, STEP = 0.1)
    % ===================================================================================
    % Aplica Interpolare Proximala pe imaginea 2 x 2 f cu puncte intermediare echidistante.
    % f are valori cunoscute în punctele (1, 1), (1, 2), (2, 1) ?i (2, 2).
    % Parametrii:
    % - f = imaginea ce se va interpola;
    % - STEP = distan?a dintre dou? puncte succesive.
    % ===================================================================================
    
    % TODO: Defineste coordonatele x si y ale punctelor intermediare.
    x_int = 1 : STEP : 2;
    y_int = 1 : STEP : 2;
    
    % Se afl? num?rul de puncte.
    len = length(x_int);

    % TODO: Cele 4 puncte încadratoare vor fi aceleasi pentru toate punctele din interior.
    x1 = 1;
    x2 = 2;
    y1 = 1;
    y2 = 2;
    
    % TODO: Initializeaza rezultatul cu o matrice nula n x n.
    out = zeros(len,len);
  
    % Se parcurge fiecare pixel din imaginea finala.
    for i = 1 : len
        for j = 1 : len
            % TODO: Afla cel mai apropiat pixel din imaginea initiala.
            if x_int(i) < 1.5
              x = x1;
             else
              x = x2;
            endif
            
            if y_int(j) < 1.5
              y = y1;
             else
              y = y2;
            endif
            
            % TODO: Calculeaza pixelul din imaginea finala.
            out(i, j) = f(x,y);
    
        endfor
    endfor

endfunction