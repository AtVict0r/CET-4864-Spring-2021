%1. A(s) = s/(s + 1)
%a.
n = [1, 0]; %numerator
d = [1, 1]; %denominator
A_s = tf(n, d) %transfer function

z = zero(A_s) %zeroes
p = pole(A_s) %poles
g = 1.5; %amplifier

A_s_1 = zpk(z, p, g); %transfer function with amplifier

%b.
t = [0 : 0.01 : 0.1]; %time plot
x = sin(2 * pi * 10 * t); %sine wave function
y = lsim(A_s_1, x, t); %time response plot

figure
plot(t, g * x, 'k', t, y, 'b'); %plot sine wave
legend('output of system', 'sine input')
title('sine wave of A(s)')

t = [0 : 0.01 : 0.5]; %time plot
x = square(2 * pi * 2 * t); %square wave function
y = lsim(A_s_1, x, t); %time response plot

figure
plot(t, g*x, 'k', t, y, 'b'); %plot square wave
legend('output of system', 'square input')
title('square wave of A(s)')

%2. B(s) = s/(s - 1)
%a.
n = [1, 0]; %numerator
d = [1, -1]; %denominator
B_s = tf(n, d) %transfer function

z = zero(B_s) %zeroes
p = pole(B_s) %poles
g = 1.5; %amplifier

B_s_1 = zpk(z, p, g); %transfer function with amplifier

%b.
t = [0 : 0.01 : 0.1]; %time plot
x = sin(2 * pi * 10 * t); %sine wave function
y = lsim(B_s_1, x, t); %time response plot

figure
plot(t, g * x, 'k', t, y, 'b'); %plot sine wave
legend('output of system', 'sine input')
title('sine wave of B(s)')

t = [0 : 0.01 : 0.5]; %time plot
x = square(2 * pi * 2 * t); %square wave function
y = lsim(B_s_1, x, t); %time response plot

figure
plot(t, g*x, 'k', t, y, 'b'); %plot square wave
legend('output of system', 'square input')
title('square wave of B(s)')

%3. C(s) = 1/s
%a.
n = [1]; %numerator
d = [1, 0]; %denominator
C_s = tf(n, d) %transfer function

z = zero(C_s) %zeroes
p = pole(C_s) %poles
g = 1.5; %amplifier

C_s_1 = zpk(z, p, g); %transfer function with amplifier

%b.
t = [0 : 0.01 : 0.1]; %time plot
x = sin(2 * pi * 10 * t); %sine wave function
y = lsim(C_s_1, x, t); %time response plot

figure
plot(t, g * x, 'k', t, y, 'b'); %plot sine wave
legend('output of system', 'sine input')
title('sine wave of C(s)')

t = [0 : 0.01 : 0.5]; %time plot
x = square(2 * pi * 2 * t); %square wave function
y = lsim(C_s_1, x, t); %time response plot

figure
plot(t, g*x, 'k', t, y, 'b'); %plot square wave
legend('output of system', 'square input')
title('square wave of C(s)')

%4. D(s) = (s + 1)/(s^2 + 2*s + 100)
%a.
n = [1, 1]; %numerator
d = [1, 2, 100]; %denominator
D_s = tf(n, d) %transfer function

z = zero(D_s) %zeroes
p = pole(D_s) %poles
g = 1.5; %amplifier

D_s_1 = zpk(z, p, g); %transfer function with amplifier

%b.
t = [0 : 0.01 : 0.1]; %time plot
x = sin(2 * pi * 10 * t); %sine wave function
y = lsim(D_s_1, x, t); %time response plot

figure
plot(t, g * x, 'k', t, y, 'b'); %plot sine wave
legend('output of system', 'sine input')
title('sine wave of D(s)')

t = [0 : 0.01 : 0.5]; %time plot
x = square(2 * pi * 2 * t); %square wave function
y = lsim(D_s_1, x, t); %time response plot

figure
plot(t, g*x, 'k', t, y, 'b'); %plot square wave
legend('output of system', 'square input')
title('square wave of D(s)')