syms x y;

ydash(x, y) = x^2 + y ;

h = 0.05;
iterations = 2;

xval = 0;
yval = 1;

for i = 1:iterations
    
    yval_temp = yval;
    xval_temp = xval;

    yval = yval + h * ydash(xval, yval);
    xval = xval + h;

    yval_iter = yval;

    for j = 1:3
        ydash_previous = vpa(ydash(xval_temp, yval_temp));
        ydash_iter = vpa(ydash(xval, yval_iter));

        yval_iter = yval_temp + (h/2) * (ydash_previous  + ydash_iter);
    end

    yval = yval_iter;
    fprintf('Iteration %d: %.5f\n', i, yval);
end