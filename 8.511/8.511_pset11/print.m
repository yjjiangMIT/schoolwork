function [] = print( psi, char )

if ~isempty(psi.bin)
    str = [char, '|'];
    if psi.sign < 0
        str = ['-', str];
    end
    if psi.bin(1) == 0 && psi.bin(2) == 0
        str = [str, '.'];
    elseif psi.bin(1) == 0
        str = [str, 'd'];
    else
        str = [str, 'u'];
        if psi.bin(2) ~= 0
            str = [str, 'd'];
        end
    end
    str = [str, ','];
    if psi.bin(3) == 0 && psi.bin(4) == 0
        str = [str, '.'];
    elseif psi.bin(3) == 0
        str = [str, 'd'];
    else
        str = [str, 'u'];
        if psi.bin(4) ~= 0
            str = [str, 'd'];
        end
    end
    str = [str, '>'];
    disp(str);
    
end