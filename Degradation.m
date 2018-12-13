[y, fs]=audioread('test.wav');%打开的wav文件名

Fs=1000;%目标采样率
x = downsample(y, 48000/Fs);%原始采样率

name=num2str(Fs);

filename = ([name,'.wav']);%生成的wav文件名
audiowrite(filename,x,Fs)

sigLength = length(y);
disp(sigLength);