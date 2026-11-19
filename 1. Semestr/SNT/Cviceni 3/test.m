odmocnina2 = bisekce(@(x) x^2 - 2, 0, 2, 50);
koren_cos = bisekce(@(x) x - cos(x), 0, 1, 50);

fprintf('Odmocnina ze 2: %.6f\n', odmocnina2);
fprintf('Rovnice x = cos(x): %.6f\n\n', koren_cos);


R0 = 100;
A = 3.9083e-3;
B = -5.775e-7;
C = -4.183e-12;

f_pt100 = @(T) R0 * (1 + A*T + B*T^2 + C*(T - 100)*T^3) - 90;

T_bisekce = bisekce(f_pt100, -100, 0, 50);
T_fzero = fzero(f_pt100, [-100, 0]);
rozdil = abs(T_bisekce - T_fzero);

fprintf('Pt100 (bisekce): %.6f °C\n', T_bisekce);
fprintf('Pt100 (fzero):   %.6f °C\n', T_fzero);
fprintf('Rozdíl výsledků: %.2e °C\n', rozdil);

T0 = 11;      
w = 28;       
K = 0.2;
kroky = 30;

T = zeros(1, kroky + 1);
T(1) = T0;

for k = 1:kroky
    T(k + 1) = T(k) + K * (w - T(k));
end

plot(0:kroky, T, '-o');
grid on;
xlabel('Krok simulace k [-]');
ylabel('Teplota T [°C]');
title('Simulace P-regulátoru');


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