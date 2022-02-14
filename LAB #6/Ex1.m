clear; clc;

c = 1; %initial loop condition

for a = [1, 10, 20] %Possible values of a
sys = tf(a, [10, a]); %Transfer function
    
figure(c)
subplot(2,1,1)
step(sys) %Step response plot
title(['Step response for a = ', num2str(a)])
    
subplot(2,1,2)
grid on;
pzmap(sys); %Pole and zero plot
title(['Zero pole plot for a = ', num2str(a)])

c = c + 1; %Increment loop condition

%stepinfo(sys) %Time reponse characterics of transfer function

end