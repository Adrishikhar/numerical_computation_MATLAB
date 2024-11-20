syms x y;

ydash(x, y) = y -x ;

h = 0.1;
iterations = 5;

xval = 0;
yval = 2;

for i = 1:iterations
    k1 = h * vpa(ydash(xval, yval));
    k2 = h * vpa(ydash(xval + h, yval + k1));

    yval = yval + 0.5*(k1 + k2);
    xval = xval + h;
    fprintf('Iteration %d: %.4f\n', i, yval);
    
end