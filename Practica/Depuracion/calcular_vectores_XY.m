function [X_10, Y_10] = calcular_vectores_XY(T_10, X, Y)
    X_10 = T_10 * transpose(X);
    Y_10 = T_10 * transpose(Y);
end
