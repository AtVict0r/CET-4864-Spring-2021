clear; clc;

a = 15;
b = 100;

den = [1 a b];

sys = tf(b, den)

z = zero(sys)
p = pole(sys)

syms t o u

w_n = sqrt(b)
l = a / (2 * w_n)

y_t = (1 - (1 / sqrt(1 - l^2)) * exp(-l * w_n * t) * cos(w_n * sqrt(1 - l^2) * t - o)) * u;
pretty(y_t)

T_r = 1.8 / w_n
T_s = 4 / (l * w_n)
T_p = pi / (w_n * sqrt(1 - l^2))
OS = exp(-(l * pi) / sqrt(1 - l^2))

subplot(2, 1, 1)
step(sys)
stepinfo(sys)

subplot(2, 1, 2)
pzmap(sys);