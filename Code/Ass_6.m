clear
clc
close all

%Our comment: while increasing the Period (N) , the omega node get smaller so we have more fourier series coefficients in the 2*pi ; the function go throw to be continuos.

N= [10 20 100 1000];

%Period 10
n = 0:N(1)-1;
x = [ 1 1 1 zeros(1 , N(1)-5) 1 1];
subplot(4,2,1);
stem(n , x);
Title1 = sprintf('X[n] with period %d' , N(1));
title(Title1);
xlabel('n');
ylabel('X[n]');
a = (1/N(1))*fft(x);
OmgO=2*pi/N(1);
Omegas = 0:OmgO:2*pi-OmgO;
subplot(4,2,2);
stem (Omegas, a);
xlim([0 2*pi]);
Title2 = sprintf('ak for period %d ' , N(1));
title(Title2);
xlabel('Omega');
ylabel('ak');

%Period 20
n = 0:N(2)-1;
x = [ 1 1 1 zeros(1 , N(2)-5) 1 1];
subplot(4,2,3);
stem(n , x);
Title1 = sprintf('X[n] with period %d' , N(2));
title(Title1);
xlabel('n');
ylabel('X[n]');
a = (1/N(2))*fft(x);
OmgO=2*pi/N(2);
Omegas = 0:OmgO:2*pi-OmgO;
subplot(4,2,4);
stem (Omegas,a);
xlim([0 2*pi]);
Title2 = sprintf('ak for period %d ' , N(2));
title(Title2);
xlabel('Omega');
ylabel('ak');

%Period 100
n = 0:N(3)-1;
x = [ 1 1 1 zeros(1 , N(3)-5) 1 1];
subplot(4,2,5);
stem(n , x);
Title1 = sprintf('X[n] with period %d' , N(3));
title(Title1);
xlabel('n');
ylabel('X[n]');
a = (1/N(3))*fft(x);
OmgO=2*pi/N(3);
Omegas = 0:OmgO:2*pi-OmgO;
subplot(4,2,6);
stem (Omegas,a);
xlim([0 2*pi]);
Title2 = sprintf('ak for period %d ' , N(3));
title(Title2);
xlabel('Omega');
ylabel('ak');
  
%Period 1000
n = 0:N(4)-1;
x = [ 1 1 1 zeros(1 , N(4)-5) 1 1];
subplot(4,2,7);
stem(n , x);
Title1 = sprintf('X[n] with period %d' , N(4));
title(Title1);
xlabel('n');
ylabel('X[n]');
a = (1/N(4))*fft(x);
OmgO=2*pi/N(4);
Omegas = 0:OmgO:2*pi-OmgO;
subplot(4,2,8);
stem (Omegas,a);
xlim([0 2*pi]);
Title2 = sprintf('ak for period %d ' , N(4));
title(Title2);
xlabel('Omega');
ylabel('ak');