%%%%%%%%%%%%%% GM(1,1)Ԥ��ģ��(11��-4��) %%%%%%%%%%%%%%%
clc,clear
y0=[12.4 6.9 4.3 9.3 10.8 16.7];
n=length(y0);sigma=y0(1:n-1)./y0(2:n);
range=minmax(sigma);y1=cumsum(y0);
for i=2:n
    z(i)=0.5*(y1(i)+y1(i-1));
end
B=[-z(2:n)',ones(n-1,1)];Y=y0(2:n)';u=B\Y;
y0_1=zeros(1,n);y0_1(1)=y0(1);
for k=1:n-1
    y0_1(k+1)=(1-exp(u(1)))*(y0(1)-u(2)/u(1))*exp(-u(1)*(k));
end
epsilon=y0-y0_1;epsilon_r=abs(epsilon./y0);
rho=1-(1-0.5*u(1))/(1+0.5*u(1))*sigma;
t=11:1:10+length(y0);
figure(1);subplot(2,1,1);plot(t,epsilon);legend('���Բв�');
xlabel('�·�');ylabel('ƽ�����²в�棩');
subplot(2,1,2);plot(t,epsilon_r);legend('������');
xlabel('�·�');ylabel('�����%��');
figure(2);plot(t,y0,'r.',t,y0_1,'bo');legend('ʵ��ƽ������','Ԥ��ƽ������');
xlabel('�·�');ylabel('ƽ������');title('GM(1,1)ģ��Ԥ��ƽ������');