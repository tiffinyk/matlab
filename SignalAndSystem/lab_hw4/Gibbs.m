%观察 Gibbs 现象 
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
ylabel('前 10 项有限级数'); 
y=0; 
for i=1:20 
 y=y+sishu*(sin((2*i-1)*100*pi*t)/(2*i-1)); 
end 
subplot(222); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 20 项有限级数'); 
y=0; 
for i=1:30 
 y=y+sishu*(sin((2*i-1)*100*pi*t)/(2*i-1)); 
end 
subplot(223) 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 30 项有限级数'); 
y=0; 
for i=1:40 
 y=y+sishu*(sin((2*i-1)*100*pi*t)/(2*i-1)); 
end 
subplot(224); 
plot(t,y); 
axis([0,0.04,-4,4]); 
xlabel('time'); 
ylabel('前 40 项有限级数');
