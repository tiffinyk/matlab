%�����˹��ҵ�ܲ�ֵԤ��ģ��
clc
clear,close all
xdata=1980:1:2009;
ydata=[598.75 620.12 634.65 663.53 728.12 862.73 952.21 1073.84 ...
       1304.66 1524.67 1642.75 1947.18 2429.96 3327.04 4255.19 ...
       5349.53 5126.22 5649.93 5763.67 6213.24 7022.98 7806.18 ...
       8730.00 11708.49 14595.29 16876.78 19631.23 23108.63 25968.38 24888.08];
r0=0.1;
[r,resnorm]=lsqcurvefit(@malthus01,r0,xdata,ydata);
yfit=598.75*exp(r*(xdata-1980));
plot(xdata,ydata,'b*',xdata,yfit,'-r');
xlabel('���');
ylabel('��ҵ�ܲ�ֵ');
title('Malthusģ�Ͷ�ĳ�й�ҵ�ܲ�ֵ���������ͼ');
epsilon=ydata-yfit;
epsilon_r=abs(epsilon./ydata);
