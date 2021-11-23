% function that can make a table from data (matrix or cell). In addition,
% there are also information about the number of row or column. The output
% of the function is file with .xlsx extention
% Note:
% the output table in command window is in the form of cell, not the form
% that result from writetable function

function annotated_array (A)
    x = size(A,1);
    y = size(A,2);
    
    if isnumeric(A)
        A = num2cell(A);   % transform matrix to cell
    end
    nama_baris = cell(1,x);
    for i = 1 : x 
        nama_baris{i} = ['baris ke-', num2str(i)]; % make the cell which value is list of the row name
    end
    nama_kolom = cell(1,y);
    for i = 1: y
        nama_kolom{i} = ['kolom ke-', num2str(i)];  % make the cell which value is list of the column name
    end

    varKolom = nama_kolom;
    varBaris = nama_baris';
    
    gabungan = cell(x+1,y+1);
    gabungan{1,1} = [];
    gabungan (1,2:end) = varKolom;
    gabungan(2:end,1) = varBaris;
    
    for i = 2 : y+1
        gabungan(2:end,i) = A(:,i-1);
    end
    %xlswrite('annotated_array',gabungan), cannot be used due to the form of data which is cell. xlswrite 
    %can't run if the array is in the form of cell
    writecell(gabungan,'annotated_array.xlsx','Range','B3');
end