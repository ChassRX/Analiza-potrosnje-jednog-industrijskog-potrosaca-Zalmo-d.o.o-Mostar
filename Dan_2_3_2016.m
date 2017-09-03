hold on;
posmatrani_dan = P(96:191);
plot(posmatrani_dan);
set(gca, 'XTick', [0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100])
    set(gca, 'XTickLabel', {'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24',''});

    axis([0 96 0 35]);



% Create xlabel
xlabel('Sati (h)');

% Create ylabel
ylabel('P (kW)');

% Create title
title('Vršna aktivna snaga - 2.3.2016.');

rekonstrukcija = posmatrani_dan;
i = 32;
j = 24;

for n=1:96
    rekonstrukcija(j) = posmatrani_dan(i);
    j = j+1;
    i = i+1;
    if j == 96
        j = 1;
    end
    if i == 96
        i = 1;
    end
end

for i=76:96
    rekonstrukcija(i) = rekonstrukcija(i) - 0.55 - 1 + 0.18;
end

for i=1:20
    rekonstrukcija(i) = rekonstrukcija(i) - 0.55 - 1 + 0.18;
end

plot(rekonstrukcija);


Puk_1 = 0;
Puk_2 = 0;
Pnt_1 = 0;
Pnt_2 = 0;
for i=1:96
    
    Puk_1 = Puk_1+posmatrani_dan(i);
    Puk_2 = Puk_2 + rekonstrukcija(i);
    
    if (i>=1 & i<=28) | (i>=52 & i<=64) | (i>=88 & i<=96)
        Pnt_1 = Pnt_1 + posmatrani_dan(i);
        Pnt_2 = Pnt_2 + rekonstrukcija(i);
    end
    
end

Pvt_1 = Puk_1-Pnt_1;
Pvt_2 = Puk_2 - Pnt_2;

cvt = 1.17*0.1539;
cnt = 1.17*0.077;

Pvt_1 = Pvt_1/4;
Pvt_2 = Pvt_2/4;
Pnt_1 = Pnt_1/4;
Pnt_2 = Pnt_2/4


visoka_tarifa_1 = Pvt_1*cvt;
visoka_tarifa_2 = Pvt_2*cvt;
niska_tarifa_1 = Pnt_1*cnt;
niska_tarifa_2 = Pnt_2*cnt;

cuk_1 = visoka_tarifa_1+niska_tarifa_1;
cuk_2 = visoka_tarifa_2+niska_tarifa_2;

razlika = cuk_1-cuk_2;







