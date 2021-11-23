% function that can make a matriks which order in row is antiparalel 
% example
%
%    1     2     3     4
%    4     3     2     1
%    1     2     3     4

function A = forward_backward(M, N)
    M = input('masukkan M: ');
    N = input('masukkan N: ');
    
    A = zeros (M, N)
    for i = 1 : M 
        if mod(i,2) ~= 0
            A(i,:) = 1:N
        else 
            A(i,:) = N:-1:1
        end
    end
end
