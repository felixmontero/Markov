

% Apartado A
T = [1/3 0 0 1/3 0 0 0 0 0; 0 1/3 2/3 0 2/9 0 0 0 0; 0 1/3 1/3 0 0 0 0 0 0; 2/3 0 0 1/3 0 0 1/3 0 0; 0 1/3 0 0 1/3 2/3 0 2/9 0; 0 0 0 0 2/9 1/3 0 0 0; 0 0 0 1/3 0 0 1/3 2/9 0; 0 0 0 0 2/9 0 1/3 1/3 2/3; 0 0 0 0 0 0 0 2/9 1/3];
X = [0 1 0 0 0 0 0 0 0];
Y = [0 0 0 0 0 0 0 1 0];

T_10 = calcular_T_10(T);
[X_10, Y_10] = calcular_vectores_XY(T_10, X, Y);

probabilidad_coincidir_zona2 = calcular_probabilidad_coincidir_zona(X_10, Y_10, 2);
probabilidad_coincidir_zona5 = calcular_probabilidad_coincidir_zona(X_10, Y_10, 5);
disp('vector inicial X pasadas 10 etapas')
disp(X_10)
disp('vector inicial Y pasadas 10 etapas')
disp(Y_10)

fprintf('Probabilidad coincidir en la Zona 2 las 2 personas: %.5f\n', probabilidad_coincidir_zona2);
fprintf('Probabilidad coincidir en la Zona 5 las 2 personas: %.5f\n', probabilidad_coincidir_zona5);

% Apartado B
X1 = [1/24,1/24,1/24,1/24,2/3,1/24,1/24,1/24,1/24];
Y1 = [0,0,1,0,0,0,0,0,0];

[X1_10, Y1_10] = calcular_vectores_XY(T_10, X1, Y1);

prob_coincidir_zona1 = calcular_probabilidad_coincidir_zona(X1_10, Y1_10, 1);

fprintf('Probabilidad de coincidir en la Zona 1 después de 10 etapas: %.5f\n', prob_coincidir_zona1);

%descomentar para ver el vector inicial B pasadas 10 etapas (comentado por falta de memoria en el pc)
%disp('vector inicial X pasadas 10 etapas')
%disp(X1_10)
%disp('vector inicial Y pasadas 10 etapas')
%disp(Y1_10)

% Apartado C
prob_coincidir_zona2_vector = zeros(1, 9);

for i = 1:9
    prob_coincidir_zona2_vector(i) = X_10(i) * Y_10(i);
end

[max_value, max_index] = encontrar_maximo(prob_coincidir_zona2_vector);
imprimir_probabilidades_y_max(prob_coincidir_zona2_vector, max_value, max_index);

% Apartado D
prob_coincidir_zona_vector = zeros(1, 9);

for i = 1:9
    prob_coincidir_zona_vector(i) = X1_10(i) * Y1_10(i);
    disp(['Zona: ' num2str(i)]);
    disp(['Probabilidad: ' num2str(prob_coincidir_zona_vector(i))]);
end

