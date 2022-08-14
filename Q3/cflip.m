function cflipped_sig = cflip(sig, N)
    Xf = fft(sig); 
    Xf = Xf(1:length(Xf) / N:end);
    cflipped_sig=ifft(Xf .* conj(Xf));
end