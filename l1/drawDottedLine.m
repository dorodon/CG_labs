function drawDottedLine(K, L, optional_color)
%drawLine: Draws a dotted line through the points K and L.
%   Example: 
%       K = [-2 + 4*rand; -2 + 4*rand; 1];
%       L = [-2 + 4*rand; -2 + 4*rand; 1];
%       drawDottedLine(K, L);

    if (nargin == 2)
        optional_color = 'magenta';
    end
    
    hold on;
    line([K(1) L(1)], [K(2) L(2)], 'LineStyle', '--', 'LineWidth', 0.5, 'color', optional_color);

end