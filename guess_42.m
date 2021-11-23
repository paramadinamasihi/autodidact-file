% function for "guess the number" game
function guess_42
    num = input ('tebak angka: ');
    if num == 42
        disp ('that''s right');
    end
    % looping for guess the number
    while num ~= 42
        if num < 42
            disp ('too low');
        else if num > 42
            disp ('too high');
        end
        end
        num = input ('tebak angka: ');
        if num == 42
        disp ('that''s right');
        end
    end
end

