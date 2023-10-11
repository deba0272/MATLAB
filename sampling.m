clc;
close all;
clear;
f1=900;
f2=2000;
T=1/min(f1,f2);
t=0:0.1*T:3*T;
x=cos(2*pi*f1*t)+cos(2*pi*f2*t);
subplot(2,2,1)
plot(t,x)
title('Analog Signal');
fm=max(f1,f2);

%Exact Sampling
fs1=2*fm;
n1=0:1/fs1:3*T;
y1=cos(2*pi*f1*n1)+cos(2*pi*f2*n1);
subplot(2,2,2)
stem(n1,y1)
title('Exact Sampling');

%Over Sampling
fs2=8*fm;
n2=0:1/fs2:3*T;
y2=cos(2*pi*f1*n2)+cos(2*pi*f2*n2);
subplot(2,2,3)
stem(n2,y2)
title('Over Sampling');

%Under sampling
fs3=0.5*fs1;
n3=0:1/fs3:3*T
y3=cos(2*pi*f1*n3)+cos(2*pi*f2*n3);
subplot(2,2,4)
stem(n3,y3)
title('Under Sampling');












