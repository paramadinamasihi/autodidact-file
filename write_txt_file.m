% function that can write txt file from variable A whict type is vector or
% matrix
function write_txt_file (filename,A)
    fid = fopen(filename,'w'); % create new file and write on it
    
    for i = 1 : size(A,1)
       for j = 1: size(A,2) 
           if j == size(A,2)
               data = sprintf('%4.3f\n',A(i,j));
           else 
               data = sprintf ('%4.3f, ',A(i,j));
           end
           fprintf(fid,data);
       end
    end
    fclose(fid); % close the file
end
