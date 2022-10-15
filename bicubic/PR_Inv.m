function B = PR_Inv(A)
	% Functia care calculeaza inversa matricii A folosind factorizari Gram-Schmidt
	% Am urmat indicatiile din enuntul temei:
  % Am impartit matricea de necunoscute (inversa) pe coloane si,
  % pentru fiecare coloana, am rezolvat sistemul A * xi = ei,
  % unde xi reprezinta coloana cu numarul i din inversa care
  % urmeaza sa fie determinata, iar ei este coloana i din matricea In,
  % unde n reprezinta numarul de pagini web

  [Q, R] = Gram_Schmidt(A);
  
  %Sistemul devine: Q * R * X = In
  %Dar coloanele matricei Q formeaza o baza ortonormata, deci Q^(-1) = Q'
  %In continuare, sistemul devine: R * X = Q' * In
  Q2 = Q';

  %n este numarul de noduri (de pagini web)
  [n, n] = size(A);
  In = eye(n);
  Z = Q2 * In;
  %Sistemul "mare": R * X = Z, unde R este superior triunghiulara
  
  X = zeros(n,n);
  %Rezolvam cele n sisteme "mici"
  for j = 1:n
    %Pentru fiecare coloana se afla necunoscutele "de jos in sus"
    for i = n:-1:1
      X(i,j) = (Z(i,j) - R(i,i+1:n) * X(i+1:n,j)) / R(i,i);
    endfor
    
  endfor
  
  B = X;
  
end