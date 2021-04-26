%% ���Ծ��Ӧ�ĵ���ָ��
function main1_GetPerformanceOfStepResponse
clc
clear all
close all

global gTolerance
gTolerance = 0.05; % ����ʱ���ƫ������Χ

%% test
wn = 2^0.5;
xi = 1.5*(2^(-0.5));
g = tf(wn^2, [1, 2*xi*wn, wn^2]);
t = 0:0.01:15;
y = step(g,t);

%% �����Ծ��Ӧ��ָ��
stepvalue = 1;
[DelayTime, RiseTime, AdjustTime, SteadyStateError] = GetPerformanceOfStepResponse(t, y, stepvalue);

% ��ͼ
figure
plot(t,y)
grid on

line([DelayTime, DelayTime], [0, stepvalue*0.5], 'color', 'r','linestyle', '--')
text(DelayTime, stepvalue*0.03, sprintf('�ӳ�ʱ��%.2f',DelayTime))

line([RiseTime, RiseTime], [0, stepvalue*0.9], 'color', 'r','linestyle', '--')
text(RiseTime, -stepvalue*0.03, sprintf('����ʱ��%.2f',RiseTime))

line([AdjustTime, AdjustTime], [0, stepvalue*(1 + gTolerance)], 'color', 'r','linestyle', '--')
text(AdjustTime, stepvalue*0.03, sprintf('����ʱ��%.2f',AdjustTime))

line([AdjustTime t(end)], stepvalue*[(1 - gTolerance), (1 - gTolerance)], 'color', 'g', 'linestyle', '--')
text(AdjustTime, stepvalue*(1 - gTolerance-0.03), sprintf('����Χ%.2f', 1 - gTolerance))
line([AdjustTime t(end)], stepvalue*[(1 + gTolerance), (1 + gTolerance)], 'color', 'g', 'linestyle', '--')
text(AdjustTime, stepvalue*(1 + gTolerance+0.03), sprintf('����Χ%.2f', 1 + gTolerance))
text(t(end)*0.9, stepvalue*1.03, sprintf('��̬���%f', SteadyStateError))

end

%% ���Ծ��Ӧ�ĵ���ָ��
function [DelayTime, RiseTime, AdjustTime, SteadyStateError] = GetPerformanceOfStepResponse(t, y, stepvalue)
% �ӳ�ʱ��td:����̬�����У������0��������ֵ̬��50%����Ҫ��ʱ��
% ����ʱ��tr:����̬�����У���Ӧ���ߴ���ֵ̬10%������90%����ʱ��
% ����ʱ��ts:��������Ӧ���������ֵ֮���ƫ��ﵽ����Χ��һ��ȡ5%��2%������������̬����ʱ�䣨��t=0��ʼ��ʱ��
% ��̬���err:������������̬����Ĳ�ֵ

global gTolerance

% �ӳ�ʱ��
index = find(y >= stepvalue*0.5, 1, 'first');
DelayTime = t(index);

% ����ʱ��
index = find(y >= stepvalue*0.9, 1, 'first');
RiseTime = t(index);

% ����ʱ�����̬���
index1 = find(y <= stepvalue*(1 - gTolerance), 1, 'last'); % ����Χ��ȫ�ֱ���ָ��
index2 = find(y >= stepvalue*(1 + gTolerance), 1, 'last');

if isempty(index2) % ���û�г���������ֵΪ��
    index = index1;
else
    index = max(index1, index2);
end

AdjustTime = t(index);

SteadyStateError = mean(y(index:end)) - stepvalue; % �������̬������Ϊ����ʱ��������ƽ��ֵ���������Ĳ�����������ʱ�̵�ֵ���������Ĳ�

end

