%% Constant Values

% Enter initial conditions here :
M = [4, 1, 1;
    1, 5, 2;
    1, 2, 3];

B = [2; -6; 4];

X = [1 ; 1 ; 1];

% Definitions
L = tril(M, -1); 
U = triu(M, 1);
D = M - U - L;

H = -D \ (L + U);
C = D \ B;

%% Iteration Matrix

for i = 1:10
    disp(i + " Iteration")
    X = H*X + C
end

%% Convergence
A = eig(H);
if size(A(A>1 | A < -1)) > 0 
    disp("The Matrix Diverges!")
else
    disp("The Matrix Converges!")
end

