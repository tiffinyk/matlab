%��ԳƷ����ϳ�
figure;
t=0:0.001:0.1; 
sishu=12/pi; 
y=sishu*sin(100*pi*t); 
subplot(221) 
plot(t,y); 
axis([0,0.1,-4,4]); 
xlabel('time'); 
ylabel('ǰ 1 �����޼���'); 
y=sishu*(sin(100*pi*t)+sin(3*100*pi*t)/3); 
subplot(222); 
plot(t,y); 
axis([0,0.1,-4,4]); 
xlabel('time'); 
ylabel('ǰ 2 �����޼���'); 
y=sishu*(sin(100*pi*t)+sin(3*100*pi*t)/3+...
sin(5*100*pi*t)/5+sin(7*100*pi*t)/7+sin(9*100*pi*t)/9); 
subplot(223) 
plot(t,y); 
axis([0,0.1,-4,4]); 
xlabel('time'); 
ylabel('ǰ 5 �����޼���'); 
t=0:0.001:0.1; 
y=0; 
for i=1:100 
 y=y+sishu*(sin((2*i-1)*100*pi*t)/(2*i-1)); 
end 
subplot(224); 
plot(t,y); 
axis([0,0.1,-4,4]); 
xlabel('time'); 
ylabel('ǰ 100 �����޼���');

%��ԳƷ���Ƶ�׷�����˫��Ƶ�ף�
figure;
subplot(211);
plot(t,y);
xlabel('time');
ylabel('��Գ����ڷ����ź�');
axis([0,0.1,-4,4]); 
N=100;
X=fft(y,N);
f=1/0.1*(-N/2:(N/2-1));
subplot(212);
stem(f,abs(fftshift(X))/N);
xlabel('Frequency(Hz)');
ylabel('magnitude');

%��ԳƷ���Ƶ�׷���������Ƶ�ף�
figure;
m=1:2:25;
E=6;
an=2*E./m/pi;
stem(m,an,'fill');
hold on;
m0=0;
a0=0;
stem(m0,a0,'fill');
grid on;
xlabel('��Ƶ����');
ylabel('�����Է���Ƶ��');
hold off;