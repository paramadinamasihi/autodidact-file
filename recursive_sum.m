% recutsive function to sum each number char in one string
% example : A = 123456
% output = 1+2+3+4+5+6 = 21

function sum = recursive_sum(A)
    char_A = num2str(A);             % transform to char so indexing can be done
    change_char_A = char_A;            % save the variable char_A so it can use in below 
    n = length(char_A);
    
    if n == 1
        sum = str2num(char_A(1));
        else
        change_char_A(n) = '';         % delete the last char to make A shorter than before so it can meet the boundary condition
        A = str2num(change_char_A);            % save the shorter matrix in A
        sum = str2num(char_A(n))+recursive_sum(A);  % make the recursive function 
    end
end