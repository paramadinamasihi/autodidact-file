%% Function that erase word or sentence from the longer one

function final_word = word_remover(kalimatAwal, eraser); %declare the name of function
    kalimatAwal = input ('enter the sentence : ','s');
    eraser = input ('what word you want to romove from the sentence: ','s');
    
    A = strfind(kalimatAwal,eraser); %find the location of word which want to remove in the sentence
    angkaKalAwal = double (kalimatAwal); % transform the string to double
    angkaKalAwal(A:A+length(eraser)-1)=0; % change the number to 0 to normalize with 0 (0 as space in char form)
    angkaKalAkhir = []; % declare the matrix for catch the result
    
    %loop function to remove number 0 from the sentence
    for i = 1 : length(angkaKalAwal)
        if angkaKalAwal(i) ~= 0
            angkaKalAkhir =[angkaKalAkhir,angkaKalAwal(i)];
        end
    end
    final_word = char(angkaKalAkhir); % tarnsform the matrix of number to char again
end

