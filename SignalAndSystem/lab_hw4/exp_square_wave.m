%��ԳƷ����ϳ�(������ָ����ʽ��
t=0:0.00001:0.1; 
sishu=6/pi; 
y=sishu*exp(1i*100*pi*t-1i*0.5*pi); 
subplot(221) 
plot(t,y); 
axis([0,0.1,-2,2]); 
xlabel('time'); 
ylabel('ǰ 1 �����޼���'); 
y=sishu*(exp(1i*100*pi*t-1i*0.5*pi)+exp(1i*3*100*pi*t-1i*0.5*pi)/3); 
subplot(222); 
plot(t,y); 
axis([0,0.1,-2,2]); 
xlabel('time'); 
ylabel('ǰ 2 �����޼���'); 
y=sishu*(exp(1i*100*pi*t-1i*0.5*pi)+exp(1i*3*100*pi*t-1i*0.5*pi)/3+...
exp(1i*5*100*pi*t-1i*0.5*pi)/5+exp(1i*7*100*pi*t-1i*0.5*pi)/7+...
exp(1i*9*100*pi*t-1i*0.5*pi)/9); 
subplot(223) 
plot(t,y); 
axis([0,0.1,-2,2]); 
xlabel('time'); 
ylabel('ǰ 5 �����޼���'); 
t=0:0.00001:0.1; 
y=0; 
for n=1:100 
 y=y+sishu*(exp(1i*(2*n-1)*100*pi*t-1i*0.5*pi)/(2*n-1)); 
end 
subplot(224); 
plot(t,y); 
axis([0,0.1,-2,2]); 
xlabel('time'); 
ylabel('ǰ 100 �����޼���');
