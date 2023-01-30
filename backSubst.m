function x = backSubst(U, y, k)
% Backward substitution
[m,n]=size(U);
 % If first call no k param given, but k=m
if ~exist('k')
    k=m;
end

x=y(k)/U(k,k);
if k > 1 % Recursion step
    l = [U(1:k-1, k); zeros(m - (k-1),1)];
    x = [backSubst(U,y-x*l,k-1); x];
end

