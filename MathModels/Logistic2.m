% Logistic2模型预测某市工业生产总值
clear,close all
tdata = 1980:2009;
Ndata = [598.75 620.12 634.65 663.53 728.12 862.73 952.21 1073.84 1304.66 1524.67 ...
    1642.75 1947.18 2429.96 3327.04 4255.19 5349.53 5126.22 5649.93 5763.67 6213.24 ...
    7022.98 7806.18 8730.00 11708.49 14595.29 16876.78 19631.23 23108.63 25968.38 24888.08];
a0=[30000 0.1 598.75];
[a,resnorm]=lsqcurvefit(@logistic01,a0,tdata,Ndata);
Nfit = a(1)./(1+(a(1)/a(3)-1)*exp(-a(2)*(tdata-1980)));
figure(1);
plot(tdata,Ndata,'b*',tdata,Nfit,'-r');
legend('实际工业生产总值','预测工业生产总值','Location','NorthWest');
xlabel('年份');ylabel('工业生产总值');title('Logistic模型对某市工业生产总值的拟合');
epsilon=Ndata-Nfit;
epsilon_r=abs(epsilon./Ndata);