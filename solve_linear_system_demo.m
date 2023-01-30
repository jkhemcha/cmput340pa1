% Example of solving a 2x2 linear system Ax = b

% Define A and b
A = [2,3;4,9]
b = [6;15]

% Get the LU decomposition of A
[L,U] = myLU(A)

% Solve Ly = b via forward substitution
y = fwdSubst(L, b)

% Solve Ux = y via backward substitution
x = backSubst(U, y)

% Verify that A * x = b
Ax = A * x

if isequal(A * x, b)
    disp("PASS - Ax = b")
else
    disp("FAIL - Ax != b")
end