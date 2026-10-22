clear t T filtr
load('teplota_zpracovana_fromMatlab.mat')
figure, grid on, hold on, title('binarni data z Matlaby')
plot(t, T, 'LineWidth', 1.2);
xlabel('Čas');
ylabel('Teplota');

