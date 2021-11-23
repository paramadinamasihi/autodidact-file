% Function to sort number in ascendant order
function ascendant = LoopingAscendant (A)

for i = 1: length (A)
    for indeks = 1 : length (A)-1
        if A(indeks) < A(indeks+1)
            A(indeks) = A (indeks);
            A(indeks+1) = A(indeks+1);
        else 
            x = A(indeks);
            A(indeks) = A(indeks+1);
            A(indeks+1) = x;
        end
    end
end
ascendant = A;
end

