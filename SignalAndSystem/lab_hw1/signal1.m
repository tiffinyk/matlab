%信号与系统实验作业
%信号的加法、乘法
%假设f1(t)=sinwt , f2(t)=sin8wt , w=2pi , 求 f1(t)+f2(t)和 f1(t)*f2(t) 的波形图。
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

%信号的尺度展缩、平移、反转
%假设f(t)为三角信号，求f(0.5t)、f(2t)、f(-2t)和f(2-2t)的波形图。
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

%信号的积分
figure(3);
syms t f1;                                          %定义符号变量
f1=2*heaviside(t)-heaviside(t-1);%生成一个原始信号，其中heaviside(t)为阶跃函数，当t<0时，其为0，当t=0时，其为0.5，当t>0时，其为1
t=-1:0.001:2;                                        %定义变量t的范围
subplot(1,2,1);
ezplot(f1,t);
title('原函数');
grid on;
ylabel('f(t)');
f=int(f1,'t');                                      %对函数f1中的变量t进行积分
subplot(1,2,2);
ezplot(f,t);
title('积分函数');
grid on;
ylabel('f(t)');

%信号的微分
figure(4);
syms t f2;                                          %定义符号变量
f2=t*(2*heaviside(t)-heaviside(t-1))+heaviside(t-1);%生成一个原始信号，其中heaviside(t)为阶跃函数，当t<0时，其为0，当t=0时，其为0.5，当t>0时，其为1
t=-1:0.001:2;                                        %定义变量t的范围
subplot(1,2,1);
ezplot(f2,t);
title('原函数');
grid on;
ylabel('f(t)');
f=diff(f2,'t',1);                                   %对函数f2中的变量t进行一次微分（即求一阶导数）
subplot(1,2,2);
ezplot(f,t);
title('微分函数');
grid on;
ylabel('f(t)');
