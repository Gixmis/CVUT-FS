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

%%
v0 = 300;
theta = pi/3;
g = 9.81;

f_yt = @(t) v0*sin(theta)*t - 1/2*g*t.^2;
f_xt = @(t) v0*cos(theta)*t;

t = 1:0.1:50;

figure, grid on, plot(t, f_xt(t)), xlabel('time'), ylabel('x')
figure, grid on, plot(t, f_yt(t)), xlabel('time'), ylabel('y')
%%
f_yx = @(x) v0*sin(theta)*(x/(v0*cos(theta))) - 1/2*g*(x/(v0*cos(theta))).^2;

x = 0:1:10000;
figure, grid on, plot(x,f_yx(x)), xlabel('x'), ylabel('y')

syms t theta v0
g = sym(981)/100;

f_yt = v0*sin(theta)*t-1/2*g*t.^2;
okamzikDopadu = solve(f_yt == 0,t);

eval(subs(okamzikDopadu(2), {'v0','theta'}, {300,pi/3}))

df_yt = diff (f_yt,t);
casVrcholu = solve(df_yt == 0,t);
tVrcholu = eval(subs(casVrcholu, {'v0', 'theta'}, {300, pi/3}));

df_yt = diff(f_yt,2,2);
vrchol = eval(subs(f_yt,{'t','v0t','theta'}, {tVrcholu,300,pi/3}));

t_dopad =(2*v0*sin(0))/2;


f_ytt = @(t) v0*sin(theta)*t_dopad - 1/2*g*t_dopad.^2;
f_xtt = @(t) v0*cos(theta)*t_dopad;


figure, grid on, plot(t, f_xtt(t)), xlabel('time'), ylabel('x')
figure, grid on, plot(t, f_ytt(t)), xlabel('time'), ylabel('y')

