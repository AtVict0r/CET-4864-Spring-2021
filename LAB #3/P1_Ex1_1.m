pkg load symbolic

syms t

f = -3*t*exp(-t);
F = laplace(f);

figure

subplot(2,1,1)
fplot(f, [-5 5])
xlabel('time (t)')
ylabel('f(t)')
title('f(t)')

subplot(2,1,2)
fplot(F, [-5 5])
xlabel('frequency (s)')
ylabel('F(s)')
title('F(s)')
