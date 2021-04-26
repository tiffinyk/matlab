num4=161*[1 3];
sys2=tf(num4,den);
phi2=feedback(sys2,1);
impulse(phi2);