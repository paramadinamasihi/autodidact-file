% Function to etermine one number is odd or even
function even_odd
    x = input ('masukkan angka: ')
y = mod(x,2)
switch y
    case  0
        disp('Genap')
    case  1
        disp('Ganjil')
end
end
