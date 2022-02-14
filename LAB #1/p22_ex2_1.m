y0 = input('y0 = ');
delta = input('& = ');
w_n = input('w_n = ');
t = input('t = ');
angle = input('angle = ');

y_t = (y0 / (sqrt(1 - delta))) * exp(-delta * w_n * t) * sin(w_n * sqrt(1 - delta^2) * t + angle);
disp(['y_t = ', num2str(y_t)]);
