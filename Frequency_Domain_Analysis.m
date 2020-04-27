% This program runs a Frequency Domain Analysis
% Takes the load, takes the Fourier, takes the impulse response
% Multiplies the 2 and takes the inverse Fourier
m=1;
k=100;
dt=0.002;
load_dur=2;
ns=load_dur/dt;
ft=200*ones(1,ns);
r=0.5;
wmin=0;
wmax=pi/dt;
dw=0.1;

% Time to repetition 
tr=2*pi/dw;
NPR=tr/dt;
[t,y]=fda1(m,k,z,ft,dt,wmin,wmax,dw,NPR);
plot(t,y)
