%ż�Գ����������źŵĺϳ�
figure;
t=0:0.001:0.1; 
sishu=40/(pi*pi); 
y=5+sishu*cos(100*pi*t); 
subplot(221) 
plot(t,y); 
axis([0,0.1,0,10]); 
xlabel('time'); 
ylabel('ǰ 1 �����޼���'); 
y=5+sishu*(cos(100*pi*t)+cos(3*100*pi*t)/9); 
subplot(222); 
plot(t,y); 
axis([0,0.1,0,10]); 
xlabel('time'); 
ylabel('ǰ 2 �����޼���'); 
y=5+sishu*(cos(100*pi*t)+cos(3*100*pi*t)/9+...
cos(5*100*pi*t)/25+cos(7*100*pi*t)/49+cos(9*100*pi*t)/81); 
subplot(223) 
plot(t,y); 
axis([0,0.1,0,10]); 
xlabel('time'); 
ylabel('ǰ 5 �����޼���'); 
t=0:0.001:0.1; 
y=5; 
for i=1:100 
 y=y+sishu*(cos((2*i-1)*100*pi*t)/(2*i-1)^2); 
end 
subplot(224); 
plot(t,y); 
axis([0,0.1,0,10]); 
xlabel('time'); 
ylabel('ǰ 100 �����޼���');

%ż�Գ����������ź�Ƶ�׷�����˫��Ƶ�ף�
figure;
subplot(211);
plot(t,y);
xlabel('time');
ylabel('ż�Գ��������ǲ��ź�');
axis([0,0.1,0,10]); 
N=100;
X=fft(y,N);
f=1/0.1*(-N/2:(N/2-1));
subplot(212);
stem(f,abs(fftshift(X))/N);
xlabel('Frequency(Hz)');
ylabel('magnitude');

%ż�Գ����������ź�Ƶ�׷���������Ƶ�ף�
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
xlabel('��Ƶ����');
ylabel('���������ǲ�Ƶ��');
hold off;