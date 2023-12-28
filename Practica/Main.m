% Apartado A
% Definir la matriz de transición
T = [1/3 0 0 1/3 0 0 0 0 0;
   0 1/3 2/3 0 2/9 0 0 0 0;
   0 1/3 1/3 0 0 0 0 0 0;
   2/3 0 0 1/3 0 0 1/3 0 0;
   0 1/3 0 0 1/3 2/3 0 2/9 0;
   0 0 0 0 2/9 1/3 0 0 0;
   0 0 0 1/3 0 0 1/3 2/9 0;
   0 0 0 0 2/9 0 1/3 1/3 2/3;
   0 0 0 0 0 0 0 2/9 1/3];

% vectores iniciales
X = [0 1 0 0 0 0 0 0 0]
Y = [0 0 0 0 0 0 0 1 0]
% Calcular T elevada a la décima potencia
T_10 = T^10;
% Calculamos los vectores X e Y
X_10=T_10 * transpose(X);
Y_10=T_10 * transpose(Y);

% Calculamos las probabilidades de que coincidan en las 2 zonas
probabilidad_coincidir_zona2= X_10(2) * Y_10(2);
probabilidad_coincidir_zona5= X_10(5) * Y_10(5);

fprintf('Probabilidad coincidir en la Zona 2 las 2 personas: %.5f\n', probabilidad_coincidir_zona2);
fprintf('Probabilidad coincidir en la Zona 5 las 2 personas: %.5f\n', probabilidad_coincidir_zona5);

% Apartado B
% Definir nuevo vector inicial
X1 = [1/24,1/24,1/24,1/24,2/3,1/24,1/24,1/24,1/24];
Y1 = [0,0,1,0,0,0,0,0,0];

% Calcular el vector después de 10 etapas
X1_10 = T_10 * transpose(X1);
Y1_10 = T_10 * transpose(Y1);

% Probabilidad de coincidir en la Zona 1
prob_coincidir_zona1 = X1_10(1)*Y1_10(1);

fprintf('Probabilidad de coincidir en la Zona 1 después de 10 etapas: %.5f\n', prob_coincidir_zona1);

% Apartado C

% Creamos un vector lleno de zeros para guardar los datos posteriormente
prob_coincidir_zona2_vector = zeros(1, 9);

% Bucle for para recorrer las 9 posiciones
for i = 1:9
    prob_coincidir_zona2_vector(i) = X_10(i) * Y_10(i);
end
% Encontrar el elemento más grande y su posición
[max_value, max_index] = max(prob_coincidir_zona2_vector);

disp('Probabilidades por posición:');
disp(prob_coincidir_zona2_vector);
disp(['La probabilidad más alta es ' num2str(max_value) ' en la zona ' num2str(max_index)]);

% Apartado D

% Creamos un vector lleno de zeros para guardar los datos posteriormente
prob_coincidir_zona_vector = zeros(1, 9);

% Bucle for para recorrer las 9 posiciones
for i = 1:9
    prob_coincidir_zona_vector(i) = X1_10(i) * Y1_10(i);
    disp(['Zona: ' num2str(i)]);
    disp(['Probabilidad: ' num2str(prob_coincidir_zona_vector(i))]);
end





