clear;
close all;
clc;
%% Question Three, Part C,Method one
%first pair signals
N=21;
x1=[0 0 0 0 1 1 1 1];
x2=[0 0 0 0 1 1 1 1 1 1 1 1];
out=cconv(x1,x2,N);
figure(1)
stem(out)
title('Method1,cconv of first pair signals, N=21')

%second pair signals
x3=[0 0 0 0 0 1 1 1 1 1 1 1];
x4=[0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 1];
out2=cconv(x3,x4,N);
figure(2)
stem(out2)
title('Method1,cconv of second pair signals,N=21')
%% Question Three,Part C, Method two
%first pair signals
x1pad = [x1 zeros(1,N-length(x1))];
x2pad = [x2 zeros(1,N-length(x2))];
X1=fft(x1pad);
X2=fft(x2pad);
outf=X1 .* X2;
out3 = ifft(outf);
figure(3)
stem(out3)
title('Method2,cconv of first pair signals, N=21')

%second pair signals
x3pad = [x3 zeros(1,N-length(x3))];
x4pad = [x4 zeros(1,N-length(x4))];
X3=fft(x3pad);
X4=fft(x4pad);
outf2=X3 .* X4;
out4 = ifft(outf2);
figure(4)
stem(out4)
title('Method2,cconv of second pair signals, N=21')
