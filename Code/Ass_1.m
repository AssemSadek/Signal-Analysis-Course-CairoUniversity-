clear;
clc;
close all;

j=sqrt(-1);
T=8;
Fo=1/T;


% Plot 3 Period of  x(t)=20*tri((t-2)/4)-10*tri(t-2)
t=0:3*T;
t1=t(1:T+1);
X1=20*triangularPulse((t1-2)/2)-10*triangularPulse((t1-2)/1);
plot(t1,X1);
axis([0 24 -5 15]);

hold on;
t2=t(T+1:2*T+1);
X2=20*triangularPulse((t2-2-T)/2)-10*triangularPulse((t2-2-T)/1);
plot(t2,X2);

hold on;
t3=t(2*T+1:3*T+1);
X3=20*triangularPulse((t3-2-2*T)/2)-10*triangularPulse((t3-2-2*T)/1);
plot(t3,X3);


% Calculate ao ( DC term )
ao=Fo*(40*(sinc(0*2*Fo))^2-10*(sinc(0*Fo))^2)*exp(j*-4*pi*0*Fo);


%Calculate first 100 harmonics
a=zeros(1,100);
k=1:length(a);
a=Fo*(40*(sinc(2*k*Fo)).^2-10*(sinc(k*Fo)).^2).*exp(j*-4*pi*k*Fo);

%Plot original signal with DC only
figure
Xf=ao;
DC=ones(1,3*T+1).*ao;
subplot(4,2,1);
plot(t1,X1);
axis([0 24 -5 15]);
hold on;
plot(t2,X2);
hold on;
plot(t3,X3);
hold on;
plot(t,DC,'color','r');
title('With DC term');

%Plot with different numbers of harmonics
for k=1:7
    Xf=Xf+2*abs(a(k))*cos(2*pi*Fo*k*t+ phase(a(k)));
    subplot(4,2,1+k);
    plot(t1,X1);
    axis([0 24 -5 15]);
    hold on;
    plot(t2,X2);
    hold on;
    plot(t3,X3);
    hold on;
    plot(t,Xf,'color','r');
    Title = sprintf('with %d harmonics' , k);
    title(Title);
end

Xf=ao;
for k=1:100
     Xf=Xf+2*abs(a(k))*cos(2*pi*Fo*k*t+ phase(a(k)));
end
figure;
plot(t1,X1);
axis([0 24 -5 15]);
hold on;
plot(t2,X2);
hold on;
plot(t3,X3);
hold on;
plot(t,Xf,'color','r');
Title = sprintf('with %d harmonics' , 100);
title(Title);



