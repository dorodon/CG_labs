function [A, B, C] = getNormalCoeff(K, L)
%getNormalCoeff: Returns the coefficients of the normal to a straight line
%built on points K and L.
%   Example:
%       K = [-2 + 4*rand; -2 + 4*rand; 1];
%       L = [-2 + 4*rand; -2 + 4*rand; 1];
%       [A, B, C] = getNormalCoeff(K, L)

%Canonical equation to common:
%   (x - xk)/(xl - xk) = (y - yk)/(yl - yk)
%   y = (x - xk)/(xl - xk)*(yl - yk) + yk
%   y = (yl - yk)/(xl - xk)*x + yk - (yl - yk)/(xl - xk)*xk

%   y = kx + b -> kx - y + b = 0 -> A = k; B = -1; C = b;

    A = (L(2)-K(2))/(L(1)-K(1));
    B = -1;
    C = K(2)-A*K(1);

end