Proximal:

Functia proximal_2x2 aplica interpolare proximala pe imaginea 2 x 2 f cu puncte
intermediare echidistante, unde f are valori cunoscute în punctele (1, 1), (1, 2),
(2, 1) si (2, 2). Mai intai se definesc coordonatele x si y ale punctelor
intermediare, folosind STEP-ul dat, apoi, cu ajutorul punctelor incadratoare, se
calculeaza fiecare pixel din imaginea finala, folosindu-ne de cel mai apropiat
pixel din imaginea initiala.

Functia proximal_2x2_RGB face acelasi lucru ca functia precedenta, dar pentru o
imagine RGB, deci, pentru fiecare culoare, se extrage canalul culorii respective
din imagine, se aplica functia precedenta, apoi se formeaza imaginea finala,
concatenand cele 3 canale prelucrate.

Functia proximal_coef calculeaza coeficientii pentru interpolarea proximala intre
punctele (x1, y1), (x1, y2), (x2, y1) si (x2, y2). Se formeaza matricea A, vectorul
b, apoi se calculeaza vectorul coloana de coeficienti.

Functiea proximal_resize scaleaza imaginea folosind algoritmul de interpolare
proximala (Transforma imaginea I din dimensiune m x n in dimensiune p x q). Se 
construieste matricea de transformare, apoi se inverseaza, folosind functia de
inversare mentionata anterior. Se parcurge fiecare pixel din imaginea finala si
se construieste conform formulei. La sfarsit, se da cast imaginii la uint8, pentru
a nu avea pixeli invalizi (de tip float).

Functia proximal_resize_RGB face acelasi lucru ca functia precedenta, dar pentru o
imagine RGB, deci, pentru fiecare culoare, se extrage canalul culorii respective
din imagine, se aplica functia precedenta, apoi se formeaza imaginea finala,
concatenand cele 3 canale prelucrate.

Functia proximal_rotate roteste imaginea alb-negru I de dimensiune m x n cu unghiul
rotation_angle (exprimat în radiani), aplicand interpolare proximala. Se calculeaza
matricea de transformare, se inverseaza, apoi, pentru fiecare pixel din imaginea
finala, aplica transformarea inversa asupra (x, y) si calculeaza x_p si y_p din
spatiul imaginii initiale. Daca xp sau yp se afla in exteriorul imaginii, se pune
un pixel negru in matrice (R(y+1, x+1) = 0) si se trece mai departe. Altfel, se
calculeaza pixelul conform formulei. La sfarsit, se da cast imaginii la uint8, pentru
a nu avea pixeli invalizi (de tip float).

Functia proximal_rotate_RGB face acelasi lucru ca functia precedenta, dar pentru o
imagine RGB, deci, pentru fiecare culoare, se extrage canalul culorii respective
din imagine, se aplica functia precedenta, apoi se formeaza imaginea finala,
concatenand cele 3 canale prelucrate.


Bicubic:

Functia bicubic_coef calculeaza coeficientii de interpolare bicubica pentru 4 puncte
alaturate. Se calculeaza matricile intermediare conform formulelor, se convertesc
la double, apoi se calculeaza matricea finala.

Functia fx aproximeaza derivata fata de x a lui f in punctul (x, y).

Functia fy aproximeaza derivata fata de y a lui f in punctul (x, y).

Functia fxy aproximeaza derivata fata de x si y a lui f in punctul (x, y).

Functia precalc_d precalculeaza matricile Ix, Iy si Ixy ce contin derivatele dx, dy,
dxy ale imaginii I pentru fiecare pixel al acesteia. Cele 3 matrici se initializeaza
cu 0, apoi se calculeaza folosind formulele si cele 3 functii precedente.

Functia bicubic_resize scaleaza imaginea folosind algoritmul de interpolare bicubica,
transformand imaginea I din dimensiune m x n in dimensiune p x q. Se construieste
matricea de transformare, apoi se inverseaza, folosind functia de inversare
mentionata anterior. Se precalculeaza derivatele, apoi, pentru fiecare pixel din
imagine, folosind derivatele, se calculeaza coeficientul bicubic. Apoi, folosind
formulele, se calculeaza valoarea interpolata a pixelului respectiv. La sfarsit, se
da cast imaginii la uint8, pentru a nu avea pixeli invalizi (de tip float).

Functia bicubic_resize_RGB face acelasi lucru ca functia precedenta, dar pentru o
imagine RGB, deci, pentru fiecare culoare, se extrage canalul culorii respective
din imagine, se aplica functia precedenta, apoi se formeaza imaginea finala,
concatenand cele 3 canale prelucrate.
