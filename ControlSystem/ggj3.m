num3=160*[1 3];
sys1=tf(num3,den);
phi1=feedback(sys1,1);
impulse(phi1);