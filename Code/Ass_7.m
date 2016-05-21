clear
clc
close all

[X,Fs]=audioread('noisy.wav');
N=size(X,1);
n=0:N-1;
K=0:Fs/N:Fs-Fs/N;
plot(X);
title('Noisy message');
sound(X,Fs);
pause(5.5);
a=(1/N)*fft(X);
Omega = n * 2 * pi / N;


figure;
%plot FSC before removing noise
subplot(2,1,1);
stem(K,abs(a));
title('FSC before De-noising');
xlabel('Frequency');

%removing noise with ak greater 0.12
a(abs(a)>0.12)=0;
%plot FSC after removing noise
subplot(2,1,2);
stem(K,abs(a));
axis ([0 8000 0 0.14])
title('FSC after De-noising');
xlabel('Frequency');

figure;

%plot the signal before removing noise
subplot(2,1,1);
plot(X);
title('the signal before denoising');


%Getting the DenoiseSignal
DenoiseSignal=ifft(N*a);

%plot the signal after removing noise
subplot(2,1,2);
plot(DenoiseSignal);
% ylim([-0.8 0.8]);
title('the signal after denoising');

%Amplify the DenoiseSignal
DenoiseSignal=30*DenoiseSignal;

%Play Denoise Signal
sound(DenoiseSignal,Fs);
