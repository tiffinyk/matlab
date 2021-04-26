data = xlsread('C:\Users\ASUS\Desktop\HW2\MotorData.xlsx','A2:B16');
ratio = zeros(15,2); 
%定义一个15行2列的矩阵用来存储计算出来的传动比
%因为是求解一元二次方程，对于每一个motor，都可以得到2个n值
for i=1:15
    syms n;
    Ts0 = data(i,1);
    K0 = data(i,2);
    TL = 39.86;
    omega = 0.005;
    Ts = Ts0 * n;
    K = K0 * n * n;
    Ts - K * omega == TL;
    ratio(i,:) = solve(Ts - K * omega == TL, n);
end
