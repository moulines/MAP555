zer= [-0.5;-0.5;-0.99];
pol= [0.99*exp(j*2*pi*[-0.3 0.3]') ;0.9*exp(j*2*pi*[-0.1 0.1]')];
zplane(zer,pol);
[b,a]= zp2tf(zer,pol,1);
fvtool(b,a)