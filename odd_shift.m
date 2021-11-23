% function that can shift char or string according to the vector shift

function a = odd_shift(S,shift)
    S = input ('input words: ','s');
    shift = input ('input vector: ');
    
    S_num = double (S);
    if length(S) <= length(shift)
        for i = 1 : length(S)
            S_num(i) = S_num(i) + shift(i);
        end 
    end 
    if length(S) > length(shift)
        for i = 1 : length(S)
            a = i;
            while a > length(shift)
                a = a - length (shift);
            end 
            S_num(i) = S_num(i) + shift(a);
        end
    end
    a = char(S_num)
end

