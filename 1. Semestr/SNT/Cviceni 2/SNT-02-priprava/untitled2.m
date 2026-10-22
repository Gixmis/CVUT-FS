m = readtable('mereni_teploty.csv');
tm = m.t;
T = m.T;
T_filtr = movmean(T, 9);
plot(tm, T, '.', tm, T_filtr, '-');
xlabel('t [s]'); ylabel('T [°C]');
legend('Původní', 'Filtrovaná'); grid on;