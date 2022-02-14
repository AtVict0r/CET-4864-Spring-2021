clc;
close all;
clear all;

s=tf('s');

%Given TFs
G = (s + 1) / ((s^2) + (2*s) + 3)
H = (s + 4) / (s + 5)

% Exercise 1
% Find Ta(s), Tb(s), Tc(s) and Td(s)
Ta = series(G, H)
Tb = parallel(G, H)
Tc = feedback(G, H)
Td = feedback(H, G)

% Exercise 2
% (a) Step and impulse responses
figure(1)

subplot(421)
step(Ta)

ylabel('(a)')

subplot(422)
impulse(Ta)

subplot(423)
step(Tb)

ylabel('(b)')

subplot(424)
impulse(Tb)

subplot(425)
step(Tc)

ylabel('(c)')

subplot(426)
impulse(Tc)

subplot(427)
step(Td)

ylabel('(d)')

subplot(428)
impulse(Td)

% (b) System characteristics info
Sa = stepinfo(Ta)

Sb = stepinfo(Tb)

Sc = stepinfo(Tc)

Sd = stepinfo(Td)

% (c) Zero and pole plot
figure(2)
grid on

subtitle('Zero-pole plot')

subplot(2,2,1)
pzmap(Ta)
title('Ta(s)')

subplot(2,2,2)
pzmap(Tb)
title('Tb(s)')

subplot(2,2,3)
pzmap(Tc)
title('Tc(s)')

subplot(2,2,4)
pzmap(Td)
title('Td(s)')