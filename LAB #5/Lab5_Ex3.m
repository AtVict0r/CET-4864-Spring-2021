%a. Transfer function of system
%T(s) = (8 * (s + 1) * (s + 2))/((s + 10) * (s + 3) * (s + 4))
z = [-1, -2] %zeroes
p = [-10, -3, -4] %poles
g = 8 %gain

sys = zpk(z, p, g)

%b. Zero-pole plot of T(s)
figure; zplane(z, p) %zero-pole plot

%c. Step and ramp response of the system
figure; step(sys) %step response

s = tf('s');
figure; step(sys/s); title('Ramp Response') %ramp response