%%%%%%%%%%%%%% GM(1,1)预测模型(5月-10月) %%%%%%%%%%%%%%%
clc,clear
x0=[22.5 26.3 29.0 28.1 25.4 21.4];
n=length(x0);sigma=x0(1:n-1)./x0(2:n);
range=minmax(sigma);x1=cumsum(x0);
for i=2:n
    z(i)=0.5*(x1(i)+x1(i-1));
end
B=[-z(2:n)',ones(n-1,1)];X=x0(2:n)';u=B\X;
x0_1=zeros(1,n);x0_1(1)=x0(1);
for k=1:n-1
    x0_1(k+1)=(1-exp(u(1)))*(x0(1)-u(2)/u(1))*exp(-u(1)*(k));
end
epsilon=x0-x0_1;epsilon_r=abs(epsilon./x0);
rho=1-(1-0.5*u(1))/(1+0.5*u(1))*sigma;
t=5:1:4+length(x0);
figure(1);subplot(2,1,1);plot(t,epsilon);legend('绝对残差');
xlabel('月份');ylabel('平均气温残差（℃）');
subplot(2,1,2);plot(t,epsilon_r);legend('相对误差');
xlabel('月份');ylabel('相对误差（%）');
figure(2);plot(t,x0,'r.',t,x0_1,'bo');legend('实际平均气温','预测平均气温');
xlabel('月份');ylabel('平均气温');title('GM(1,1)模型预测平均气温');