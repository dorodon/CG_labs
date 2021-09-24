function drawLine(K, L, optional_color)
%drawLine: Draws a line through the points K and L.
%   Example: 
%       K = [-2 + 4*rand; -2 + 4*rand; 1];
%       L = [-2 + 4*rand; -2 + 4*rand; 1];
%       drawLine(K, L);

    if (nargin == 2)
        optional_color = 'black';
    end
    
    hold on;
    plot(K(1), K(2), 'or'); text(K(1), K(2)+.1, 'K'); 
    plot(L(1), L(2), 'or'); text(L(1), L(2)+.1, 'L');
    line([K(1) L(1)], [K(2) L(2)], 'color', optional_color);

end