syms x y;

% Enter the function definitions and the initial condition here :
g1 = x^2 + x*y + y^2 + - 7;
g2 = x^3 + y^3 - 9;

var = [1.5; 0.5];

% Jacobian and Function Matrix
func(x, y) = [g1; g2];

jac(x, y) = [diff(g1,x) diff(g1,y);
    diff(g2, x) diff(g2, y)];

% Iterations
for i = 1: 4
    j = jac(var(1, 1), var(2, 1));
    f = func(var(1, 1), var(2, 1));
    var = vpa(var - j \ f )
end


    

