function output_sig = cconv(sig1, sig2, N)
    x1=sig1;
    x2=sig2;
    n1=length(x1);
    n2=length(x2);

    T = 1:N; % Create Time Index
    %Zero adding to make sequences of length N
    x1=[x1 zeros(1,N-n1)]; 
    x2=[x2 zeros(1,N-n2)];
    %Initializing Output sequence of zeros
    y = zeros(1,N);
    %Performing Circular Convolution:
    for m=1:N
        y(m)=0;
            for n=1:N
                i=m-n+1; %(m-n+1) since we're taking index from 1
                if(i<=0)
                i=N+i; % mod N
            end
        y(m)=y(m)+x1(n)*x2(i); %Convolution Sum Formula
    end
    end
    %Performing Circular Convolution:
    for n=1:N
        y(n)=0;
        for k=1:N
            i=n-k+1; %(m-n+1) since we're taking index from 1
            if(i<=0)
                i=N+i; % mod N
            end
            y(n)=y(n)+x1(k)*x2(i); %Convolution Sum Formula
        end
    end
    output_sig=y;

end