syms x y;

ydash(x, y) = x + y ;

h = 0.1;
iterations = 10;

xval = 0;
yval = 1;

for i = 1:iterations
    yval = yval + h * ydash(xval, yval);
    xval = xval + h;
    fprintf('Iteration %d: %.5f\n', i, yval);
end
