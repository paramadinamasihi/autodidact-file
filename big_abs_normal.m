%function that count number of iteration needed to have the result of
%random number generator bigger than big absolute normal number
function n = big_abs_normal (N)
    N = input('masukkan nilai N: ');
    
rng(41);
sample = randn(1);
counter = 0;
while sample < N
    counter = counter+1;
    sample =randn(1);
end
n = counter;
end
