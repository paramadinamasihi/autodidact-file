% function that can reverse the order in one vector

function reverse = reverse_order(A)
    char_A = num2str(A);            % transform to char so indexing can be done
    change_char_A = char_A;            % save the variable char_A so it can use in below 
    n = length(char_A);
    
    if n == 1
        reverse = str2num(char_A(1));      
    else
        change_char_A(end) = '';         % delete the last char to make A shorter than before so it can meet the boundary condition
        A = str2num(change_char_A);             % save the shorter matrix in A        
        reverse = [str2num(char_A(end)), reverse_order(A)];  % menjumlahkan tiap komponen terakhir dari input    
    end
end
