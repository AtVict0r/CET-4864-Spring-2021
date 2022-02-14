pkg load control

%a. Transfer function of the system
% y''' - 3y'' + 9y' + 7y = 6r' + 4r
s = tf('s');
sys = (6*s + 4)/(s^3 - 3*s^2 + 9*s + 7)

%b. Roots (zeroes, poles) of the transfer function
zero(sys) %zeroes
pole(sys) %poles

%c. Obtain step response and the impulse response
figure; step(sys) %step response
figure; impulse(sys) %impulse response