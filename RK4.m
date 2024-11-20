syms x y;

ydash(x, y) = (y^2 - x^2) / (y^2 + x^2) ;

h = 0.1;
iterations = 5;

xval = 0;
yval = 1;

for i = 1:iterations
    k1 = h * vpa(ydash(xval, yval));
    k2 = h * vpa(ydash(xval + h/2, yval + k1/2));
    k3 = h * vpa(ydash(xval + h/2, yval + k2/2));
    k4 = h * vpa(ydash(xval + h, yval + k3));

    yval = yval + (1/6)*(k1 + 2* k2 + 2 * k3 + k4);
    xval = xval + h;
    fprintf('Iteration %d: %.4f\n', i, yval);
    
end