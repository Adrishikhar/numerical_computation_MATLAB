%% Initial Setup
%x = [45 50 55 60];
%y = [0.7071 0.7660 0.8192 0.8660];

x = [1 1.5 2 2.5];
y = [2.718 4.481 7.389 12.182];

X = 2.25;

n = length(x);
D = zeros(n, n);
D(: , 1) = y';

%% Creation of the difference table
for j = 2:n % columns
    for i = n: -1 : j % rows
        D(i, j) = D(i, j-1) - D(i-1, j-1);
    end
end

disp(D)

%% Newton Backward Interpolation
h = x(2) - x(1);
u = (X - x(n)) / h;
A = y(n);
G = u;

for k = 1:n-1
    A = A + G * D(n, k+1);
    G = G * (u + k) / (k+1);
end

disp(A)
