clc;
clear all;
A = 2;
m = 0.5:0.01:1;
u = 20;
%A law
v = (1+(log(A*m)))/(1+log(A));
%u law
v1 = (log(1+(u*m)))/(log(1+u));

figure(1)
plot(m,v);
xlabel('m');
ylabel('V');
title('A law');

figure(2)
plot(m,v1);
xlabel('m');
ylabel('V');
title('u law');