clear all;
close all;
clc;
num0=-1;
den0=[1 0 -10];
G=tf(num0,den0);
num1=[-1 -15];
den1=1;
H=tf(num1,den1);
K=-1;
GH=K*feedback(G,H);
t=0:0.01:10;
step(GH,t,'r');
td=0.5; 
kp=50; 
ti=0.2;
num2=kp*[td*ti ti 1];
den2=[ti 0];
pid=tf(num2,den2);
phi=feedback(GH*pid,1);
hold on;
step(phi,t,'b');