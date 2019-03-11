clc;

vd = [];
delm = [];
delv = 0;
cnt = 1;

for del=0:0.075*pi:(2*pi)
    if (sin(2*del) > sin(2*(del-0.075*pi)))
       delm(cnt) = 1;
       delv = delv + 0.2;
       vd(cnt) = delv;
       cnt = cnt+1;
    else
        delm(cnt) = 0;
        delv = delv-0.2;
        vd(cnt) = delv;
        cnt = cnt+1;
    end
end

stairs(vd);
disp(delm);
