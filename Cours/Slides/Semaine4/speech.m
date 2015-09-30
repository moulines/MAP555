[y,fs,nbits]=wavread('male1.wav');
ismpdeb= 1.8993e5;
period= 371;
ismpfin= ismpdeb+4*period;
insig= y(ismpdeb:ismpfin);
L= length(insig);
w= blackman(L);
insigw= insig.*w;
figure(1)
subplot(2,1,1)
plot(insig);
subplot(2,1,2)
plot(insigw);
N= 2048;
Wf= fft(w,N);
Wf= fftshift(Wf);
WfdB= 10*log10(abs(Wf));
insigW= fft(insigw,N);
insigW= fftshift(insigW);
insigWdB= 10*log10(abs(insigW));
figure(2)
subplot(2,1,1);
plot(linspace(-pi,pi,N),WfdB);
xlabel('Magnitude spectrum (dB)');
axis([-pi,pi,min(WfdB)-5,max(WfdB)+5]);
subplot(2,1,2)
plot(linspace(-pi,pi,N),insigWdB);
xlabel('Magnitude spectrum (dB)');
axis([-pi,pi,min(insigWdB)-5,max(insigWdB)+5]);

figure(3);
N1= N/10;
insigWdB= insigWdB(N/2:N/2+N1);
plot(linspace(0,pi/10,length(insigWdB)),insigWdB);
axis([0,pi/10,min(insigWdB)-5,max(insigWdB)+5]);
ylabel('Magnitude spectrum (dB)')
xlabel('normalized pulsation');



