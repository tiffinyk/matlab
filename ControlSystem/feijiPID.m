Ti=2;%Ti=1ʱϵͳ���ȶ�
Td=2;%Td=1.8ʱ��ϵͳ��̬�����½�
Kp=1.4;%�ֱ�ѡȡKp=1,1.4��2���۲�ϵͳ�ȶ���
num1=[Kp*Ti*Td Kp*Ti Kp];
den1=[Ti 0];
G1=tf(num1,den1);
num2=[1];
den2=[1 1 4 0 0];
G2=tf(num2,den2);
G=feedback(G1*G2,1);
t=0:0.2:120;
step(G,t);