function [Q,R]=qrviasgs (A)
[m,n] = size(A);
Q = A;
R = zeros(m,n);
for k=1:n
    R(k,k) = sqrt(Q(:,k)'*Q(:,k));
    Q(:,k) = Q(:,k)/R(k,k);
    for j=k+1:n
        R(k,j) = Q(:,j)'*Q(:,k);
        Q(:,j) = Q(:,j)-R(k,j)*Q(:,k);
    end
end