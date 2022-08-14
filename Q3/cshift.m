function cshifted_sig = cshift(sig, m)
    N=length(sig);
    X_K=fft(sig,N);
    K=0:N-1;
    a=exp(-1i*((2*pi)/N).*K*m);
    X2_K=X_K.*a;
    cshifted_sig=ifft(X2_K);
end