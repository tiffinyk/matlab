N=length(out.time);               %离散点的个数
Ts=(out.time(N) - out.time(1))/N; %抽样周期
m=floor(N/2);                     %因为DFT是对称的，只需取一半
Ws=2*pi/Ts; 
W=Ws*(0:m)/N; 
F=fft(out.z1,N); FF=F(1:m+1); F11=abs(FF); 
F=fft(out.z2,N); FF=F(1:m+1); F12=abs(FF); 
F=fft(out.z3,N); FF=F(1:m+1); F13=abs(FF); 
F=fft(out.z4,N); FF=F(1:m+1); F14=abs(FF); 
figure(1) 
plot(W,F11,'b',-W,F11,'b'); 
title('输入信号的幅频特性'); 
xlabel('频率（Rad/s）'); 
figure(2) 
plot(W,F12,'b',-W,F12,'b'); 
title('滤波后信号的幅频特性'); 
xlabel('频率（Rad/s）'); 
figure(3) 
plot(W,F13,'b',-W,F13,'b'); 
title('抽样后信号的幅频特性'); 
xlabel('频率（Rad/s）'); 
figure(4) 
plot(W,F14,'b',-W,F14,'b'); 
title('恢复后信号的幅频特性'); 
xlabel('频率（Rad/s）');