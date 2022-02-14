T1 = tf([30], [1, 5, 30]);
T2 = tf([30], [1, 10, 30]);

figure(3)
step(T1)
hold on

step(T2)
legend('original system', 'compensated system')