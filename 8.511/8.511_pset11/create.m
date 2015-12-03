function [ psi ] = create( site, spin, psi )

if ~isempty(psi.bin)
    index = site * 2 - (spin+1)/2;
    if psi.bin(index) == 1
        psi.bin = [];
        psi.sign = 0;
    else
        psi.bin(index) = 1;
        sum = 0;
        for i = 1 : index - 1
            sum = sum + psi.bin(i);
        end
        if mod(sum, 2)
            psi.sign = -psi.sign;
        end
    end
end

end