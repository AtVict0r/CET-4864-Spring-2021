clear; clc;

sys = tf(1, [1, 8, 16]) %Transfer function

%display the damping ratio
%natural frequency
%time constant of the poles
damp(sys) 