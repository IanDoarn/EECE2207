%Loan Test Values
 A = 20000;
 r = 6.5
 P = 391.32
 mr = 1:19
 mn = 2
 B = A*(1+(r/1200))^mn - (P/(r/1200))*((1+(r/1200))^mn-1)

 plot(B)
 
%Freq Analysis Test Value
 %C = 160e-6
 %L=45
 %freqVec = logspace(1,4,100);