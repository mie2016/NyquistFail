[y, fs]=audioread('test.wav');%�򿪵�wav�ļ���

Fs=1000;%Ŀ�������
x = downsample(y, 48000/Fs);%ԭʼ������

name=num2str(Fs);

filename = ([name,'.wav']);%���ɵ�wav�ļ���
audiowrite(filename,x,Fs)

sigLength = length(y);
disp(sigLength);