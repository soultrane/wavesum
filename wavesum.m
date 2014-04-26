% Sum up sine waves and play it back as audio
% Utlizing the sinetone function - x = sinetone(f,r,s,a)
% M = (N / D) - Multiplier of second frequency
% Nplus,Dplus - Amount added to multiplier after each loop
% Input is: output = wavesum(f, r, s, a, N, D, Nplus, Dplus)

function output = wavesum(f, r, s, a, N, D, Nplus, Dplus)
    output = 0;
    for count = 1:25
        if count == 1;
            x = sinetone(f, r, s, a);
        elseif count > 1
        M = (N / D);
        F = f * M;
        A = a / M;
        x = sinetone(F, r, s, A);
        N += Nplus;
        D += Dplus;
    end
        output += x;
    end
%    soundsc(output,r);
end
