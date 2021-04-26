num1=18.8*[1 3];
sys=tf(num1,den);
phi=feedback(sys,1,-1);
step(phi);
grid on;