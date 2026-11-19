function c = bisekce(f, a, b, N)
fa = f(a);
fb = f(b);

if fa * fb >= 0
    error('f(a) a f(b) maji opacny znak.');
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


f = @(x) -x.^2+4*x+1;
x= -1:0.01:5;

figure, grid on, plot(x,f(x))

syms x
f = -x^2+4*x+1;
df = diff(f,x);
figure, plot(-1:0.01:5, dfsym([-1:0.01:5]))
solve(df ==0)
bisekce(@(x) -x^2+4*x+1,-1,5,30)
df = diff(f,x,2);

va = 300;
theta = pi/3;
g = 9.81;

f_yt = @(t) v0*sin(theta)*t - 1/2*g*t.^2;
f_xt = @(t) v0*cos(theta)*t;

t = 1:0.1:50;
figure, grid on, plot(t, f_xt(t))
figure, grid on, plot(t,f_yt(t))