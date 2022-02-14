y0 = 0.15;
delta = 3 / (2 * sqrt(2));
w_n = sqrt(2);
t = 0 : 0.1 : 10;
angle = 0;

y_t = (y0 / (sqrt(1 - delta))) .* exp(-delta * w_n .* t) .* sin(w_n .* sqrt(1 - delta^2) .* t + angle);
plot(y_t, t);
