a = 0 ;
b = 1 ;
N = 30;
ulozKoren = zeros(1,N);
x = linspace(a,b,1e5);
%f zero(F,[a,b]) - bisekce
%f = @(x) - cos(x);
f = @(x) x^2-2;

figure, plot(x,f(x)), grid on, hold on


if(f(a)*f(b)>0)
    error('chyba hranic intervalu %g, %g', a,b)
end
for i=1:N
    c = (a+b)/2;
    fc = f(c);
    fa = f(a);
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


vysledek = (a+b)/2;

fire, plot(x.f(x)), frid on, hold on
plot(ulozKoren, f(ulozKoren),'o')
plot
end