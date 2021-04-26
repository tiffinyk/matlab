clear;
t=0:0.1:100;
H=tf([1 3],[1 3 2]);
sys=ss(H);
[y,t,x]=impulse(sys,t);
plot(x(:,1),x(:,2))