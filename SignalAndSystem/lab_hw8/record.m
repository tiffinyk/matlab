%录制声音
Fs=8192;
nBits=16;
nChannels=2;
ID=-1;
waveFile='C:\Users\ASUS\Desktop\大三上\信号与系统\lab_hw8\boy.wav';
y=audiorecorder(Fs,nBits,nChannels,ID);
disp('Start speaking.');
recordblocking(y,2);
disp('End of speaking');
int16Array = getaudiodata(y,'int16');
plot(int16Array);
title('Audio Signal (int16)');
audiowrite(waveFile,int16Array,Fs);
