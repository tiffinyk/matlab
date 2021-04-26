load chirp %y, Fs
len=length(y); 
for i=1:floor(len/1024) 
 seg=y((i-1)*1024+1:i*1024); 
 figure('numbertitle','off','name',['Frame',num2str(i)]); 
 plot(linspace(-pi,pi,1024),fftshift(abs(fft(seg)))); 
end