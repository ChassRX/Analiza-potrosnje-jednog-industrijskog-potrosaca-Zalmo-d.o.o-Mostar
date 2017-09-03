Wuk = (sum(P)*15)/60;

suma_visoke_tarife = 0;
suma_niske_tarife = 0;
for i=1:length(P)
   
    t = datum(i);
    if t>datetime(2016,3,01)| t<datetime(2016,10,31)
        if weekday(t) == 1
            suma_niske_tarife = suma_niske_tarife + P(i);
        elseif (hour(t)>=0 & hour(t)<=8)| (hour(t)>=14 & hour(t)<=17) | (hour(t)>=23 & hour(t)<=24)
           suma_niske_tarife = suma_niske_tarife + P(i);
        end  
    
    else
      if weekday(t) == 1 
            suma_niske_tarife = suma_niske_tarife + P(i);
       elseif (hour(t)>=0 & hour(t)<=7)| (hour(t)>=13 & hour(t)<=16) | (hour(t)>=22 & hour(t)<=24)
           suma_niske_tarife = suma_niske_tarife + P(i);
       end    
        
    end
   
   
end

suma_visoke_tarife = sum(P)-suma_niske_tarife;
suma_visoke_tarife = suma_visoke_tarife/4;
suma_niske_tarife = suma_niske_tarife/4;

cvt = 1.17*0.1539;
cnt = 1.17*0.077;

visoka_tarifa = suma_visoke_tarife * cvt;
niska_tarifa = suma_niske_tarife * cnt;
