%% 求阶跃响应的典型指标
function main2_GetPerformanceOfStepResponse
clc
clear all
close all

global gTolerance
gTolerance = 0.05; % 调整时间的偏差容许范围

%% test
wn = 3*3^(0.5);
xi = (1/3)^(0.5);
g = tf([2], [1, 2*xi*wn, wn^2]);
t = 0:0.01:15;
y = step(g,t);

%% 计算阶跃响应的指标
stepvalue = 1;
[OverShoot, DelayTime, RiseTime, PeakTime, AdjustTime, SteadyStateError] = GetPerformanceOfStepResponse(t, y, stepvalue);

% 绘图
figure
plot(t,y)
grid on

line([PeakTime, PeakTime], [0, (1 + OverShoot/100)*stepvalue], 'color', 'r','linestyle', '--')
text(PeakTime, stepvalue*0.03, sprintf('峰值时间%.2f',PeakTime))
text(PeakTime, (1 + OverShoot/100 + 0.07)*stepvalue, sprintf('超调量%.2f%%',OverShoot))

line([DelayTime, DelayTime], [0, stepvalue*0.5], 'color', 'r','linestyle', '--')
text(DelayTime, -stepvalue*0.08, sprintf('延迟时间%.2f',DelayTime))

line([RiseTime, RiseTime], [0, stepvalue], 'color', 'r','linestyle', '--')
text(RiseTime, -stepvalue*0.03, sprintf('上升时间%.2f',RiseTime))

line([AdjustTime, AdjustTime], [0, stepvalue*(1 + gTolerance)], 'color', 'r','linestyle', '--')
text(AdjustTime, stepvalue*0.08, sprintf('调整时间%.2f',AdjustTime))

line([AdjustTime t(end)], stepvalue*[(1 - gTolerance), (1 - gTolerance)], 'color', 'g', 'linestyle', '--')
text(AdjustTime, stepvalue*(1 - gTolerance-0.03), sprintf('容许范围%.2f', 1 - gTolerance))
line([AdjustTime t(end)], stepvalue*[(1 + gTolerance), (1 + gTolerance)], 'color', 'g', 'linestyle', '--')
text(AdjustTime, stepvalue*(1 + gTolerance+0.03), sprintf('容许范围%.2f', 1 + gTolerance))
text(t(end)*0.9, stepvalue*1.03, sprintf('稳态误差%f', SteadyStateError))

end

%% 求阶跃响应的典型指标
function [OverShoot, DelayTime, RiseTime, PeakTime, AdjustTime, SteadyStateError] = GetPerformanceOfStepResponse(t, y, stepvalue)
% 超调量Mp:最大超调量规定为在暂态期间输出超过对应于输入的终值的最大偏离量
% 延迟时间td:在暂态过程中，输出从0上升到稳态值的50%所需要的时间
% 上升时间tr:在暂态过程中，输出第一次达到对应于输入的终值的时间（从t=0开始计时）
% 峰值时间tp:对应于最大超调量发生的时间（从t=0开始计时）
% 调整时间ts:输出与其对应于输入的终值之间的偏差达到容许范围（一般取5%或2%）所经历的暂态过程时间（从t=0开始计时）
% 稳态误差err:给定输入与稳态输出的差值

global gTolerance

% 超调量和峰值时间
[OSValue, OSIndex] = max(y);
OverShoot = (OSValue - stepvalue)/stepvalue*100;
PeakTime = t(OSIndex);

% 延迟时间
index = find(y >= stepvalue*0.5, 1, 'first');
DelayTime = t(index);

% 上升时间
index = find(y >= stepvalue, 1, 'first');
RiseTime = t(index);

% 调整时间和稳态误差
index1 = find(y <= stepvalue*(1 - gTolerance), 1, 'last'); % 容许范围由全局变量指定
index2 = find(y >= stepvalue*(1 + gTolerance), 1, 'last');

if isempty(index2) % 如果没有超调量，此值为空
    index = index1;
else
    index = max(index1, index2);
end

AdjustTime = t(index);

SteadyStateError = mean(y(index:end)) - stepvalue; % 这里的稳态误差计算为调整时间后的数据平均值与给定输入的差，概念上是最后时刻的值与给定输入的差

end