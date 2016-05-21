clear
clc
close all
%Get Original Message and Return Sampling Frequency
[Y,Fs]=audioread('hidden_message.wav');

% Display Sampling Frequency and Play message
fprintf('The sampling frequency is equal to %d \n',Fs);
%Play audio
sound(Y,Fs);
pause(3.5);
soundflipped=flipud(Y);
X=(Y-soundflipped)*0.5;
HiddenSound=X(1:(size(X,1)/2));
AmpHiddenSound=80*HiddenSound;

%Play new audio
sound(AmpHiddenSound,Fs);

