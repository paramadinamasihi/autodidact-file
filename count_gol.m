%function that count number with the saame value for the hole number
% in the matrix

function count_gol (data_mentah)
data_mentah = sort(data_mentah)
jenis = 1;
counter = 0
banyaknya = [];
for i = 2:length(data_mentah)
    if i == 2 && data_mentah(1) == data_mentah(2)
        counter = counter + 1;
        banyaknya (jenis) = counter
    else if i == 2 && data_mentah(1) ~= data_mentah(2)
            counter = 1;
            banyaknya(jenis) = counter
    end
    end
    if data_mentah(i) == data_mentah(i-1)
         jenis = jenis;
         counter = counter + 1;
         banyaknya(jenis) = counter
    else 
        jenis = jenis+1;
        counter = 0;
        counter = counter + 1;
        banyaknya(jenis) = counter
    end
end
end

