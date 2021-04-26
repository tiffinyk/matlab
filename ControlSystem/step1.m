wn = 3*3^(0.5);
xi = (1/3)^(0.5);
g = tf([2], [1, 2*xi*wn, wn^2]);
t = 0:0.01:15;
y = step(g,t);
figure
plot(t,y)
grid on