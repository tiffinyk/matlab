%�۲� Gibbs ���� 
t=0:0.000001:0.04; 
sishu=12/pi; 
y=0; 
for i=1:10 
 y=y+sishu*(sin((2*i-1)*100*pi*t)/(2*i-1)); 
end 
subplot(221) 
plot(t,y);  
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 10 �����޼���'); 
y=0; 
for i=1:20 
 y=y+sishu*(sin((2*i-1)*100*pi*t)/(2*i-1)); 
end 
subplot(222); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 20 �����޼���'); 
y=0; 
for i=1:30 
 y=y+sishu*(sin((2*i-1)*100*pi*t)/(2*i-1)); 
end 
subplot(223) 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 30 �����޼���'); 
y=0; 
for i=1:40 
 y=y+sishu*(sin((2*i-1)*100*pi*t)/(2*i-1)); 
end 
subplot(224); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('ǰ 40 �����޼���');
