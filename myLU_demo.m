% Test that the myLU.m function correctly carries out LU decomposition

% Example 2.13 from textbook
fprintf("\nTest 1\n")
A = [1,2,2;
     4,4,2;
     4,6,4]

[L, U] = myLU(A)

LU = L * U

if ~isequal(LU, A)
    disp("-------------")
    disp("Test 1 - FAIL")
    disp("-------------")
else
    disp("-------------")
    disp("Test 1 - PASS")
    disp("-------------")
end

% Another test matrix
fprintf("\nTest 2:\n")
A = [1,1,1;
     3,1,-3;
     1,-2,-5]

[L, U] = myLU(A)

LU = L * U

if ~isequal(LU, A)
    disp("-------------")
    disp("Test 2 - FAIL")
    disp("-------------")
else
    disp("-------------")
    disp("Test 2 - PASS")
    disp("-------------")
end

