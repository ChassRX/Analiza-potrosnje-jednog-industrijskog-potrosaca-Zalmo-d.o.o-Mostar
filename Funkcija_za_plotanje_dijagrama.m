function  funkcija_za_plotanje_mjeseca( mjeseci, broj_mjeseca )

hold on;
for i=1:31
    for j=1:99
        if mjeseci(broj_mjeseca,i,j) > 0
            dan(j) = mjeseci(broj_mjeseca,i,j);
        end
        
    end
    plot(dan);
   
end

