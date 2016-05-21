clear;
clc;
close all
%Initiliaze x[n]
n=-4:4;
x=[ 0 0 0 0 1 1 1 1 1];

%Plot x[n]
subplot(4,1,1)
stem(n,x,'b','filled','LineWidth',3)
axis ([-4 4 -1 1])
xlabel ('n')
ylabel('x[n]')

%Plot x[-n]
x1=fliplr(x);
subplot(4,1,2)
stem(n,x1,'b','filled','LineWidth',3)
axis ([-4 4 -1 1])
xlabel('n')
ylabel('x[-n]')

%Plot Even{x[n]}
x2=(x+x1)*0.5;
subplot(4,1,3)
stem(n,x2,'b','filled','LineWidth',3)
axis ([-4 4 -1 1])
xlabel('n ')
ylabel('xeven[n]')

%Plot Odd{x[n]}
x3=(x-x1)*0.5;
subplot(4,1,4)
stem(n,x3,'b','filled','LineWidth',3)
axis ([-4 4 -1 1])
xlabel('n ')
ylabel('xodd[n]')