x = [(pi/2):(pi/10):(2*pi)];
y = sin(x);
z = cos(x);

figure(1);

subplot(2,1,1)
plot(x, y, 'b:+', 'linewidth', 2);
title('Sin Curve', 'fontsize', 10)
legend('Sine');
ylabel('Sin(x)')
xlabel('Angle')
axis ([1.5, 6.5, -1, 1]); 
grid;

subplot(2,1,2)
plot(x, z, 'r--*', 'linewidth', 2);
title('Cos Curve', 'fontsize', 10);
legend('Cosine');
ylabel('Cos(x)')
xlabel('Angle')
axis ([1.5, 6.5, -1, 1]);
grid;
