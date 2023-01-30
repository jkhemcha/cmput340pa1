function [L, U] = myLU(A)
    % Get the size of the initial matrix 'A'
    [m,n]=size(A);
    % Create an identity matrix as a starting point for L
    L = eye(m, n);
    % Loop over the k-1 columns of the matrix
    for i = 1:n-1
        % Calculate the elimination matrices for the kth col.
        [M_k, L_k] = elimMat(A, i);
        % Multiply A by M_k in preparation for next iteration
        % i.e., M2 * M1
        A = M_k * A;
        % Multiply L_k by L in preparation for next iteration
        % i.e., L1 * L2
        L = L * L_k;
    end
    % Return upper triangular matrix in U
    U = A;
end

