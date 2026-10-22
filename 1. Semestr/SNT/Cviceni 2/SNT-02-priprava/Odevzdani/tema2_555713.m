data = readtable('volny_pad_555713.csv');
t = data.t;
s = data.s;
mean(s)
max(s)
plot(t, s);
xlabel('t [s]'); ylabel('s [m]');
grid on;


m = readtable('mereni_teploty.csv');
tm = m.t;
T = m.T;
T_filtr = movmean(T, 9);
plot(tm, T, '.', tm, T_filtr, '-');
xlabel('t [s]'); ylabel('T [°C]');
legend('Původní', 'Filtrovaná'); grid on;
vystup = table(tm, T, T_filtr, 'VariableNames',{'t', 'T', 'T_filtr'});
    writetable(vystup, 'teplota_zpracovana.csv');

save('teplota_zpracovana', 'tm', "T", 'T_filtr');

VelikostCSV = dir('teplota_zpracovana.csv');
VelikostMAT = dir('teplota_zpracovana.mat');
disp(VelikostCSV.bytes);
disp(VelikostMAT.bytes);


Equality = isequal(VelikostCSV,VelikostMAT);



%{

Vidíme, že soubory CSV
zabírají výrazně více paměti, a nejsou přesné jako .MAT, ale jsou mnohem
jednodušší přečíst, protože je může otevřít jakýkoliv textový editor, .mat
ale potřebuje specializovaný program. 
%}