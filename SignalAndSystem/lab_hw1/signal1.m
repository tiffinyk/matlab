%�ź���ϵͳʵ����ҵ
%�źŵļӷ����˷�
%����f1(t)=sinwt , f2(t)=sin8wt , w=2pi , �� f1(t)+f2(t)�� f1(t)*f2(t) �Ĳ���ͼ��
figure(1);
w=2*pi;
t=0:0.001:3;
f1=sin(w*t);
f2=sin(8*w*t);
subplot(2,1,1);
plot(t,f1+1,':',t,f1-1,':',t,f1+f2);
grid on,title('f1(t)+f2(t))');
subplot(2,1,2);
plot(t,f1,':',t,-f1,':',t,f1.*f2);
grid on,title('f1(t)*f2(t)');

%�źŵĳ߶�չ����ƽ�ơ���ת
%����f(t)Ϊ�����źţ���f(0.5t)��f(2t)��f(-2t)��f(2-2t)�Ĳ���ͼ��
figure(2);
t=-5:0.001:5; 
ft=tripuls(t,4,0.5); 
subplot(5,1,1); 
plot(t,ft); grid on; 
title ('f(t)'); 
ft1= tripuls(0.5*t,4,0.5); 
subplot(5,1,2); 
plot(t,ft1); grid on;
title ('f(0.5t)'); 
ft2= tripuls(2*t,4,0.5); 
subplot(5,1,3); 
plot(t,ft2); grid on; 
title ('f(2t)');
ft3= tripuls(-2*t,4,0.5);
subplot(5,1,4); 
plot(t,ft3); grid on; 
title ('f(-2t)');
ft4= tripuls(2-2*t,4,0.5);
subplot(5,1,5); 
plot(t,ft4); grid on; 
title ('f(2-2t)');

%�źŵĻ���
figure(3);
syms t f1;                                          %������ű���
f1=2*heaviside(t)-heaviside(t-1);%����һ��ԭʼ�źţ�����heaviside(t)Ϊ��Ծ��������t<0ʱ����Ϊ0����t=0ʱ����Ϊ0.5����t>0ʱ����Ϊ1
t=-1:0.001:2;                                        %�������t�ķ�Χ
subplot(1,2,1);
ezplot(f1,t);
title('ԭ����');
grid on;
ylabel('f(t)');
f=int(f1,'t');                                      %�Ժ���f1�еı���t���л���
subplot(1,2,2);
ezplot(f,t);
title('���ֺ���');
grid on;
ylabel('f(t)');

%�źŵ�΢��
figure(4);
syms t f2;                                          %������ű���
f2=t*(2*heaviside(t)-heaviside(t-1))+heaviside(t-1);%����һ��ԭʼ�źţ�����heaviside(t)Ϊ��Ծ��������t<0ʱ����Ϊ0����t=0ʱ����Ϊ0.5����t>0ʱ����Ϊ1
t=-1:0.001:2;                                        %�������t�ķ�Χ
subplot(1,2,1);
ezplot(f2,t);
title('ԭ����');
grid on;
ylabel('f(t)');
f=diff(f2,'t',1);                                   %�Ժ���f2�еı���t����һ��΢�֣�����һ�׵�����
subplot(1,2,2);
ezplot(f,t);
title('΢�ֺ���');
grid on;
ylabel('f(t)');
