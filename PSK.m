%PSK
clear all;

d = [1 0 1 1 0 0 0 1 0 1 0 1 1 1];
ld = length(d);

t = 0:0.000001:0.001;
f = 1000;

v1 = -1*sin(2*pi*f*t);
v2 = sin(2*pi*f*t);
vdat = [];

for i = 1:ld
    if d(i) == 1
        vdat = [vdat v2];
    else
        vdat = [vdat v1];
    end
end

tplot = length(vdat);
tv = [];

for i=1:tplot
    tv = [tv i];
end

figure
plot(tv, vdat);
