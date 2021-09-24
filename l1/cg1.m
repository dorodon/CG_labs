clear, clc, close all
format long
%%
figure(); axis equal;
xlabel('x'), ylabel('y'), title('Mirroring triangle');

K = [-2 + 4*rand; -2 + 4*rand; 1];
L = [-2 + 4*rand; -2 + 4*rand; 1];
drawLine(K, L);
[A, B, C] = getNormalCoeff(K, L);

Tri = [-2 + 4*rand, -2 + 4*rand, -2 + 4*rand;
       -2 + 4*rand, -2 + 4*rand, -2 + 4*rand;
       ones(1, 3)];
drawTriangle(Tri(:, 1), Tri(:, 2), Tri(:, 3));

temp = -2 / (A^2 + B^2);
M = [ 1 + A^2 * temp, A * B * temp, A * C * temp;
    A * B * temp, 1 + B^2 * temp, B * C * temp;
    0, 0, 1];
Tri2 = M * Tri;
drawTriangle(Tri2(:, 1), Tri2(:, 2), Tri2(:, 3), 'red');

drawDottedLine(Tri(:, 1), Tri2(:, 1));
drawDottedLine(Tri(:, 2), Tri2(:, 2));
drawDottedLine(Tri(:, 3), Tri2(:, 3));

%%
figure(); axis equal;
xlabel('x'), ylabel('y'), title('Shadowing triangle');

K = [-2 + 4*rand; -2 + 4*rand; 1];
L = [-2 + 4*rand; -2 + 4*rand; 1];
drawLine(K, L);
[A, B, C] = getNormalCoeff(K, L);

Tri = [-2 + 4*rand, -2 + 4*rand, -2 + 4*rand;
       -2 + 4*rand, -2 + 4*rand, -2 + 4*rand;
       ones(1, 3)];
drawTriangle(Tri(:, 1), Tri(:, 2), Tri(:, 3));

temp = -1 / (A^2 + B^2);
M = [ 1 + A^2 * temp, A * B * temp, A * C * temp;
    A * B * temp, 1 + B^2 * temp, B * C * temp;
    0, 0, 1];
Tri2 = M * Tri;
drawTriangle(Tri2(:, 1), Tri2(:, 2), Tri2(:, 3), 'red');

drawDottedLine(Tri(:, 1), Tri2(:, 1));
drawDottedLine(Tri(:, 2), Tri2(:, 2));
drawDottedLine(Tri(:, 3), Tri2(:, 3));

%%
figure(); 
xlabel('x'), ylabel('y'), title('Shadowing triangle with light source');

K = [-2 + 4*rand; -2 + 4*rand; 1];
L = [-2 + 4*rand; -2 + 4*rand; 1];
drawLine(K, L);
[A, B, C] = getNormalCoeff(K, L);

S = [5 - rand; 5 - rand; 1];
plot(S(1), S(2), '*y'); text(S(1), S(2)-.2, 'S'); 

Tri = [-2 + 4*rand, -2 + 4*rand, -2 + 4*rand;
       -2 + 4*rand, -2 + 4*rand, -2 + 4*rand;
       ones(1, 3)];
drawTriangle(Tri(:, 1), Tri(:, 2), Tri(:, 3));

M = [ -B * S(2) - C, B * S(1), C * S(1);
    A * S(2), -A * S(1) - C, C * S(2);
    A, B, -A * S(1) - B * S(2)];
Tri2 = M * Tri;
Tri2(1, :) = Tri2(1, :)./Tri2(3, :);
Tri2(2, :) = Tri2(2, :)./Tri2(3, :);
Tri2(3, :) = ones(1, 3);
drawTriangle(Tri2(:, 1), Tri2(:, 2), Tri2(:, 3), 'red');

drawDottedLine(S, Tri2(:, 1));
drawDottedLine(S, Tri2(:, 2));
drawDottedLine(S, Tri2(:, 3));

axis equal;
