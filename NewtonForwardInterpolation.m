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
    for i = 1 : (n - j + 1) % rows
        D(i,j) = D(i+1, j-1) - D(i, j-1);
    end
end

disp(D)

%% Newton Forward Difference Formula
h = x(2) - x(1);
u = (X - x(1)) / h;
A = y(1); % the initial value upon which other values will be added in the loop
G = u; % the multiplying factor

for k = 1:n-1
    A = A + G * D(1, k+1);
    G = G * (u - k) / (k+1);
end

disp(A)