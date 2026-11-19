%%
v0 = 300;
theta = pi/3;
g = 9.81;

f_yt = @(t) v0*sin(theta)*t - 1/2*g*t.^2;
f_xt = @(t) v0*cos(theta)*t;

t = 1:0.1:50;

figure, grid on, plot(t, f_xt(t)), xlabel('time'), ylabel('x') 
figure, grid on, plot(t, f_yt(t)), xlabel('time'), ylabel('y') % v = 0 -> max y
%% 2.

syms t v0 theta x
assume(v0>0)
assume(theta>0 & theta <pi/2)
g = 981/100;
f_yt = v0*sin(theta)*t-1/2*g*t.^2;


okamzikDopadu = solve(f_yt == 0, t);
t_dopad = okamzikDopadu(2);
    
disp("Čas dopadu:")
disp(okamzikDopadu(2))

rychlost = diff(f_yt, t);
vrchol_t = solve(rychlost == 0, t);

disp("Čas ve vrcholu:")
disp(vrchol_t)

y_max = subs(f_yt,t,vrchol_t);

disp("Maximální výška")
disp(y_max)

%% 3.

f_xt = v0*cos(theta)*t;

x_dostrel = subs(f_xt, t, t_dopad);

disp(x_dostrel)

nej_uhel = diff(x_dostrel, theta);
theta_max = solve(nej_uhel,theta);

disp(theta_max)

%% 4.

t_z_x = solve(x==f_xt,t);
trajektorie_y = subs(f_yt, t,t_z_x);

disp(trajektorie_y)

%% 5.

v0= 10+(13/10);

%% 6.

uhly = [pi/6;pi/4;pi/3];

funkce_tDopad = @(theta) (2* v0 .* sin(theta))/g;
funkce_yMax = @(theta) (v0.^2 .* sin(theta).^2)/(2*g);
funkce_xDostrel = @(theta) v0.*cos(theta).*funkce_tDopad(theta);

casDopadu = funkce_tDopad(uhly);
maxVyska = funkce_yMax(uhly);
maxVzdalenost = funkce_xDostrel(uhly);

tabulka = table(rad2deg(uhly), casDopadu, maxVyska, maxVzdalenost);

disp(tabulka)

%% 7. Graf trajektorií
y_traj = @(x, theta) x .* tan(theta) - (g * x.^2) ./ (2 * v0^2 * cos(theta)^2);

x1 = linspace(0, maxVzdalenost(1), 100);
x2 = linspace(0, maxVzdalenost(2), 100);
x3 = linspace(0, maxVzdalenost(3), 100);

figure
plot(x1, y_traj(x1, uhly(1)), x2, y_traj(x2, uhly(2)), x3, y_traj(x3, uhly(3)))
grid on
xlabel('x [m]')
ylabel('y [m]')
title('Trajektorie šikmého vrhu (v_0 = 11.3 m/s)')
legend('30°', '45°', '60°')