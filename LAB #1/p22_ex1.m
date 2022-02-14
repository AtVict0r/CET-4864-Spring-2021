p = 2.9;
a(1) = 0.5;

for n = 1 : 100
  a(n + 1) = p * a(n) * (1 - a(n));
end

plot(a);
