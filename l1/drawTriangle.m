function drawTriangle(A, B, C, optional_color)
%drawTriangle: Draws a triangle through the points A, B and C.
%   Example: 
%       A = [-2 + 4*rand; -2 + 4*rand; 1];
%       B = [-2 + 4*rand; -2 + 4*rand; 1];
%       C = [-2 + 4*rand; -2 + 4*rand; 1];
%       drawTriangle(A, B, C, 'red');

    if (nargin == 3)
        optional_color = 'black';
    end
        
    hold on;
    plot(A(1), A(2), 'k.'); text(A(1), A(2)+.1, 'A'); 
    plot(B(1), B(2), 'k.'); text(B(1), B(2)+.1, 'B');
    plot(C(1), C(2), 'k.'); text(C(1), C(2)+.1, 'C');
    
    line([A(1) B(1)], [A(2) B(2)], 'color', optional_color);
    line([C(1) B(1)], [C(2) B(2)], 'color', optional_color);
    line([A(1) C(1)], [A(2) C(2)], 'color', optional_color);

end