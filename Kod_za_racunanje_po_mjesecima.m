t = datum(1);
a = 1;
b = 1;
c = 1;
d = 1;
maksimalni_aktivni = P(1);
maksimalni_reaktivni = Q(1);

maksimalna_aktivna_snaga = zeros(0);
maksimalna_reaktivna_snaga = zeros(0);
mjeseci = zeros(12,31,99);
for i=1:length(P)
   
    if month(datum(i)) == month(t)
        if day(datum(i)) == day(t)
           mjeseci(a,b,c) = P(i);
           c = c+1;
           if P(i) >= maksimalni_aktivni
               maksimalni_aktivni = P(i);
           end
           if Q(i) >= maksimalni_reaktivni
               maksimalni_reaktivni = Q(i);
           end
        else
            c = 1;
            b = b+1;
            t = datum(i);
            i=i-1;
        end
    else
        c = 1;
        b = 1;
        a = a+1;
        t = datum(i);
        maksimalna_aktivna_snaga(d) = maksimalni_aktivni;
        maksimalna_reaktivna_snaga(d) = maksimalni_reaktivni;
        d = d+1;
        maksimalni_aktivni = P(i);
        maksimalni_reaktivni = Q(i);
        i = i-1;
    end
end
