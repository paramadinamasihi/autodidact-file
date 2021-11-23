% function that take row's mean and row's max number in each row
% the output is struct with two fields, that is mean and max

function mm = mean_max(A)
    mm = struct(); % create empty struct
    for i = 1:size(A,1)
        mm(i).mean = mean(A(i,:));  % assign the mean value for each row into struct
        mm(i).max = max (A(i,:));   % assign the max value for each row into struct
    end
end
