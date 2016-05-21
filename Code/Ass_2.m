clear;
clc;
close all
%Inilialize x[n]
n=-4:4;
x=[-1 0.5 1 0.5 1 1 1 0.5 0];

%Plot x[n]
subplot(3,1,1)
stem(n,x,'b','filled','LineWidth',3)
axis ([-8 7 -1 1])
xlabel ('n')
ylabel('x[n]')


%Plot x[n-2]
subplot(3,1,2)
stem(n+2,x,'r','filled','LineWidth',3)
axis ([-8 7 -1 1])
xlabel('n')
ylabel('x[n-2]')


%Plot x[n+3]
subplot(3,1,3)
stem(n-3,x,'r','filled','LineWidth',3)
axis ([-8 7 -1 1])
xlabel('n ')
ylabel('x[n+3]')