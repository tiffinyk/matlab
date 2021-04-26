% Dyad Synthesis --Two fixed pivots

%% Step 1: the left dyad
% Assign a variable to convert degrees to radians
deg = pi/180;
% Knowns: (change in position and orientation of coupler link)
delta2=0.907*exp(i*180*deg);
delta3=1.447*exp(i*180*deg);
alpha2=(191.1-111.8)*deg;
alpha3=(237.4-111.8)*deg;
R1=abs(1.788+1.994i);
R2=abs(0.881+1.994i);
R3=abs(0.341+1.994i);
xi1=angle(1.788+1.994i);
xi2=angle(0.881+1.994i);
xi3=angle(0.341+1.994i);
% Calculate some parameters and beta
C1=R3*cos(alpha2+xi3)-R2*cos(alpha3+xi2);
C2=R3*sin(alpha2+xi3)-R2*sin(alpha3+xi2);
C3=R1*cos(alpha3+xi1)-R3*cos(xi3);
C4=-R1*sin(alpha3+xi1)+R3*sin(xi3);
C5=R1*cos(alpha2+xi1)-R2*cos(xi2);
C6=-R1*sin(alpha2+xi1)+R2*sin(xi2);
A1=-C3^2-C4^2;
A2=C3*C6-C4*C5;
A3=-C4*C6-C3*C5;
A4=C2*C3+C1*C4;
A5=C4*C5-C3*C6;
A6=C1*C3-C2*C4;
K1=A2*A4+A3*A6;
K2=A3*A4+A5*A6;
K3=(A1^2-A2^2-A3^2-A4^2-A6^2)/2;
%beta31=2*atan((K2+(K1^2+K2^2-K3^2)^0.5)/(K1+K3))
%beta21=atan(-(A3*sin(beta31)+A2*cos(beta31)+A4)/-(A5*sin(beta31)+A3*cos(beta31)+A6))
beta3=2*atan((K2-(K1^2+K2^2-K3^2)^0.5)/(K1+K3))
beta2=atan(-(A3*sin(beta3)+A2*cos(beta3)+A4)/-(A5*sin(beta3)+A3*cos(beta3)+A6))
% Calculations: (using Cramer's rule to solve matrix equations)
A=[delta2, exp(i*alpha2)-1;delta3, exp(i*alpha3)-1];
B=[exp(i*beta2)-1, delta2; exp(i*beta3)-1, delta3];
C=[exp(i*beta2)-1, exp(i*alpha2)-1; exp(i*beta3)-1, exp(i*alpha3)-1];
% And the final answer is... (don't forget to repeat for the other dyad)
W=det(A)/det(C)
Z=det(B)/det(C)

%% Step 2: the right dyad
% Assign a variable to convert degrees to radians
deg = pi/180;
% Knowns: (change in position and orientation of coupler link)
delta2=0.907*exp(i*180*deg);
delta3=1.447*exp(i*180*deg);
alpha2=(191.1-111.8)*deg;
alpha3=(237.4-111.8)*deg;
R1=abs(-0.212+1.994i);
R2=abs(-1.119+1.994i);
R3=abs(-1.659+1.994i);
xi1=angle(-0.212+1.994i);
xi2=angle(-1.119+1.994i);
xi3=angle(-1.659+1.994i);
% Calculate some parameters and beta
C1=R3*cos(alpha2+xi3)-R2*cos(alpha3+xi2);
C2=R3*sin(alpha2+xi3)-R2*sin(alpha3+xi2);
C3=R1*cos(alpha3+xi1)-R3*cos(xi3);
C4=-R1*sin(alpha3+xi1)+R3*sin(xi3);
C5=R1*cos(alpha2+xi1)-R2*cos(xi2);
C6=-R1*sin(alpha2+xi1)+R2*sin(xi2);
A1=-C3^2-C4^2;
A2=C3*C6-C4*C5;
A3=-C4*C6-C3*C5;
A4=C2*C3+C1*C4;
A5=C4*C5-C3*C6;
A6=C1*C3-C2*C4;
K1=A2*A4+A3*A6;
K2=A3*A4+A5*A6;
K3=(A1^2-A2^2-A3^2-A4^2-A6^2)/2;
%gamma31=2*atan((K2+(K1^2+K2^2-K3^2)^0.5)/(K1+K3))
%gamma21=atan(-(A3*sin(gamma31)+A2*cos(gamma31)+A4)/-(A5*sin(gamma31)+A3*cos(gamma31)+A6))
gamma3=2*atan((K2-(K1^2+K2^2-K3^2)^0.5)/(K1+K3))
gamma2=atan(-(A3*sin(gamma3)+A2*cos(gamma3)+A4)/-(A5*sin(gamma3)+A3*cos(gamma3)+A6))
% Calculations: (using Cramer's rule to solve matrix equations)
A=[delta2, exp(i*alpha2)-1;delta3, exp(i*alpha3)-1];
B=[exp(i*gamma2)-1, delta2; exp(i*gamma3)-1, delta3];
C=[exp(i*gamma2)-1, exp(i*alpha2)-1; exp(i*gamma3)-1, exp(i*alpha3)-1];
% And the final answer is... (don't forget to repeat for the other dyad)
U=det(A)/det(C)
S=det(B)/det(C)

%% Step3: Calculate the length of linkages
L1=2
L2=abs(W)
L3=abs(Z-S)
L4=abs(U)

%% Step4: Plot the configurations
figure
Ox=[-1.788 0.212];
Oy=[-1.994 -1.994];
Px=[0 -0.907 -1.447];
Py=[0 0 0];
plot(Ox,Oy,'ro','MarkerSize', 10)
hold on
plot(Px,Py,'ro','MarkerSize', 6)
hold on
O2=-1.788-1.994i;
O4=0.212-1.994i;
Ax=[real(O2+W) real(O2+W*exp(i*beta2)) real(O2+W*exp(i*beta3))];
Ay=[imag(O2+W) imag(O2+W*exp(i*beta2)) imag(O2+W*exp(i*beta3))];
Bx=[real(O4+U) real(O4+U*exp(i*gamma2)) real(O4+U*exp(i*gamma3))];
By=[imag(O4+U) imag(O4+U*exp(i*gamma2)) imag(O4+U*exp(i*gamma3))];
plot(Ax,Ay,'ko','MarkerSize', 10)
hold on
plot(Bx,By,'ko','MarkerSize', 10)
hold on
plot([Ox(1),Ax(1)],[Oy(1),Ay(1)],'k','linewidth',1.5)
hold on
plot([Ox(1),Ax(2)],[Oy(1),Ay(2)],'r','linewidth',1.5)
hold on
plot([Ox(1),Ax(3)],[Oy(1),Ay(3)],'b','linewidth',1.5)
hold on
plot([Ox(2),Bx(1)],[Oy(2),By(1)],'k','linewidth',1.5)
hold on
plot([Ox(2),Bx(2)],[Oy(2),By(2)],'r','linewidth',1.5)
hold on
plot([Ox(2),Bx(3)],[Oy(2),By(3)],'b','linewidth',1.5)
hold on
plot([Px(1),Bx(1)],[Py(1),By(1)],'g','linewidth',1.5)
hold on
plot([Px(2),Bx(2)],[Py(2),By(2)],'g','linewidth',1.5)
hold on
plot([Px(3),Bx(3)],[Py(3),By(3)],'g','linewidth',1.5)
hold on
plot([Px(1),Ax(1)],[Py(1),Ay(1)],'r','linewidth',1.5)
hold on
plot([Px(2),Ax(2)],[Py(2),Ay(2)],'r','linewidth',1.5)
hold on
plot([Px(3),Ax(3)],[Py(3),Ay(3)],'r','linewidth',1.5)
axis([-2 0.5 -2.2 0.7])