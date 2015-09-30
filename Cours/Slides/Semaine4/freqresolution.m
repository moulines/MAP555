%
% Example: 3 sinusoids
%
T= 10^(-4); % sampling frequency= 10 kHz, sampling period 10^(-4) sec
%
%... Physical frequencies (satisfy the Nyquist condition)
%
freq= [2*10^3; 2.5*10^3;3*10^3];
%
%... normalized pulsation
%
omega= 2*pi*freq*T; 
%
%... signal generation
%
nsmp=1000;
n=0:nsmp-1;
n= n(:);
x= zeros(nsmp,1);
for i=1:length(omega),
    omcur= omega(i);
    x= x+cos(omcur*n);
end
%
%... analyse de Fourier
%
L= 10;
N= 32;
X1= fft(x(1:L),N);
L= 10;
N= 128;
X2= fft(x(1:L),N);
L= 10;
N= 32;
X3= fft(x(1:L),N);
L= 30;
N= 128;
X4= fft(x(1:L),N);
subplot(2,2,1);
stem(abs(X1));
axis([0 31 0 max(abs(X1))+1])
xlabel('DFT freq')
ylabel('Magnitude spectrum')
subplot(2,2,2);
stem(abs(X2));
xlabel('DFT freq')
ylabel('Magnitude spectrum')
axis([0 127 0 max(abs(X2))+1])

subplot(2,2,3);
stem(abs(X3));
axis([0 31 0 max(abs(X3))+1])
xlabel('DFT freq')
ylabel('Magnitude spectrum')


subplot(2,2,4);
stem(abs(X4));
axis([0 127 0 max(abs(X4))+1])
xlabel('DFT freq')
ylabel('Magnitude spectrum')



