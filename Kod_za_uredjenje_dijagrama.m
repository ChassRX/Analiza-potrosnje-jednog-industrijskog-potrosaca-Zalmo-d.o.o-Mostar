Funkcija_za_plotanje_dijagrama(mjeseci, 1);

%Uredjivanje dijagrama


    set(gca, 'XTick', [0 4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80 84 88 92 96 100])
    set(gca, 'XTickLabel', {'0','1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16','17','18','19','20','21','22','23','24',''});

    axis([0 96 0 35]);



% Create xlabel
xlabel('Sati (h)');

% Create ylabel
ylabel('P (kW)');

% Create title
title('Vršna aktivna snaga - Mart, 2016.');

D=01:31;
M=03;
Y=2016;
dat=datetime(Y, M, D);

DateString=datestr(dat);

legend(DateString);





