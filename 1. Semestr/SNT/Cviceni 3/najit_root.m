function bisekce(f, a, b, N)
    
    
    for i=1:N
        c = (a+b)/2;
        fc = c^2-2;
        fa = a^2-2;
        if fc == 0
            a = c;
            b = c;
            break
        elseif fc*fa < 0
            b = c;
        else
            a = c;
        end
    end
end

vysledek = (a+b)/2;