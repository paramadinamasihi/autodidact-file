% function that can count the positive number, negative number, odd number,
% and even number respectively

function what_kind_number
N = input ('Ukuran matrik NxN = ');
Max = input ('nilai Max= ');
Min = input ('nilai Min= ');
X = randi ([Min Max],N) % create a matrix of integer number between Max and Min with size N x N
genap = 0;
ganjil = 0;
positif = 0;
negatif = 0;

kolom = X(:);
for i = 1 : length (kolom)
    if mod (kolom(i),2) == 0
        genap = genap +1;
    else 
        ganjil = ganjil +1;
    end
    if kolom(i) >= 0
        positif = positif +1;
    else 
        negatif = negatif + 1;
    end
end
positif
negatif
ganjil
genap
end




