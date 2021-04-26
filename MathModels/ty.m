clc,clear
t=0:pi/9:2*pi;
r=[0.871 0.783 0.617 0.522 0.486 0.492 0.542 0.645 0.802 0.881 0.747 0.614 0.526 0.489 0.495 0.542 0.652 0.818 0.879];
tt=0:pi/100:2*pi;
rr=spline(t,r,tt);
polarplot(t,r,'o',tt,rr);
