%a. Transfer function of the system
% y'''' + 20y''' + 60y'' + 80y' + 48y = 8r'' + 72r' + 48r
s = tf('s');
sys = (8*s^2 + 72*s + 48)/(s^4 + 20*s^3 + 60*s^2 + 80*s + 48)

%b. Roots (zeroes, poles) of the transfer function
zero(sys) %zeroes
pole(sys) %poles

%c. Obtain step response and the impulse response
figure; step(sys) %step response
figure; impulse(sys) %impulse response