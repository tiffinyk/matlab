%偶对称周期三角信号的合成
figure;
t=0:0.001:0.1; 
sishu=40/(pi*pi); 
y=5+sishu*cos(100*pi*t); 
subplot(221) 
plot(t,y); 
axis([0,0.1,0,10]); 
xlabel('time'); 
ylabel('前 1 项有限级数'); 
y=5+sishu*(cos(100*pi*t)+cos(3*100*pi*t)/9); 
subplot(222); 
plot(t,y); 
axis([0,0.1,0,10]); 
xlabel('time'); 
ylabel('前 2 项有限级数'); 
y=5+sishu*(cos(100*pi*t)+cos(3*100*pi*t)/9+...
cos(5*100*pi*t)/25+cos(7*100*pi*t)/49+cos(9*100*pi*t)/81); 
subplot(223) 
plot(t,y); 
axis([0,0.1,0,10]); 
xlabel('time'); 
ylabel('前 5 项有限级数'); 
t=0:0.001:0.1; 
y=5; 
for i=1:100 
 y=y+sishu*(cos((2*i-1)*100*pi*t)/(2*i-1)^2); 
end 
subplot(224); 
plot(t,y); 
axis([0,0.1,0,10]); 
xlabel('time'); 
ylabel('前 100 项有限级数');

%偶对称周期三角信号频谱分析（双边频谱）
figure;
subplot(211);
plot(t,y);
xlabel('time');
ylabel('偶对称周期三角波信号');
axis([0,0.1,0,10]); 
N=100;
X=fft(y,N);
f=1/0.1*(-N/2:(N/2-1));
subplot(212);
stem(f,abs(fftshift(X))/N);
xlabel('Frequency(Hz)');
ylabel('magnitude');

%偶对称周期三角信号频谱分析（单边频谱）
figure;
m=1:2:25;
E=10;
yn=4*E./(pi.*m).^2;
stem(m,yn,'fill');
hold on;
m0=0;
y0=E/2;
stem(m0,y0,'fill');
grid on;
xlabel('基频倍数');
ylabel('周期性三角波频谱');
hold off;