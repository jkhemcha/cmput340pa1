function [M_k, L_k] = elimMat(A, k)
    [m,n]=size(A);
    if ~exist('k')  % If first call no k param given, but k=1
        k=1;
    end
    if k < n
        % Create an identity matrix to start for both M_k and L_k
        M_k = eye(m, n);
        L_k = eye(m, n);
        % Compute M_k and L_k
        for i = k+1:n
            M_k(i, k) = (A(i,k) / A(k, k)) * -1;
            L_k(i, k) = A(i,k) / A(k, k);
        end
    end
end


