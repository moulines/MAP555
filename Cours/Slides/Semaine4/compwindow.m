L=128
slice=1:L;
w1= bartlett(L);
w2= hanning(L);
w3= hamming(L);
w4= blackman(L);
figure(1)
plot(slice,w1,slice,w2,slice,w3,slice,w4);
axis([0, L, 0, 1])
figure(2);
subplot(2,2,1)
Nfft= 2048;
W1= fft(w1,Nfft);
W1= fftshift(W1);
W1= 10*log10(abs(W1));
plot(linspace(-pi,pi,Nfft), W1);
xlabel('Normalized pulsation (in rad/s.)')
ylabel('Spectral magnitude (dB)')
title('Bartlett')
axis([-pi,pi,-40,20]);
%
W1= fft(w1,Nfft);
W1= fftshift(W1);
W1= 10*log10(abs(W1));
plot(linspace(-pi,pi,Nfft), W1);
xlabel('Normalized pulsation (in rad/s.)')
ylabel('Spectral magnitude (dB)')
title('Bartlett')
axis([-pi,pi,-40,20]);
%
subplot(2,2,2)
W2= fft(w2,Nfft);
W2= fftshift(W2);
W2= 10*log10(abs(W2));
plot(linspace(-pi,pi,Nfft), W2);
xlabel('Normalized pulsation (in rad/s.)')
ylabel('Spectral magnitude (dB)')
title('Hanning')
axis([-pi,pi,-40,20]);
%
subplot(2,2,3)
W3= fft(w3,Nfft);
W3= fftshift(W3);
W3= 10*log10(abs(W3));
plot(linspace(-pi,pi,Nfft), W3);
xlabel('Normalized pulsation (in rad/s.)')
ylabel('Spectral magnitude (dB)')
title('Hamming')
axis([-pi,pi,-40,20]);
%
subplot(2,2,4)
W4= fft(w4,Nfft);
W4= fftshift(W4);
W4= 10*log10(abs(W4));
plot(linspace(-pi,pi,Nfft), W4);
xlabel('Normalized pulsation (in rad/s.)')
ylabel('Spectral magnitude (dB)')
title('Blackman')
axis([-pi,pi,-40,20]);
