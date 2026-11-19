function c = bisekce(f, a, b, N)
fa = f(a);
if fa * f(b) >= 0
    error('f(a) a f(b) musi mit opacny znak.');
end

for i = 1:N
    c = (a + b) / 2;
    fc = f(c);
    if fc == 0
        break
    elseif fc * fa < 0
        b = c;
    else
        a = c;
        fa = fc;
    end
end
end