clear;
num=[2];
den=[1 3 2];
G=tf(num,den);
sys=feedback(G,1);
rlocus(sys);
sgrid;
