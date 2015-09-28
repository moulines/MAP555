omega= -pi+0.01:0.001:pi;
L= 256;
plot(omega,10*log10(abs(sin(omega*L)./sin(omega/2))));

