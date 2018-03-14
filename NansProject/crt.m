function X = crt(M)
    
    [k,l]=size(M);
    
    X=0;
    
    if(l~=2)
        disp('Invalid column count in matrix M.');
        return;
    end
    
    B=1;
    
    for i=1:k
        for j=i:k
            if(gcd(M(i,2), M(j,2))~=1 && i~=j)
                disp('Make sure divisors are pairwise coprime numbers.');
                return;
            end
        end
        
        B=B*M(i,2);
    end
    
    Bi=[];
    Ci=[];
    
    for i=1:k
        Bi=[Bi; B/M(i,2)];
        Ci=[Ci; M(i,1)];
    end
    
    
    Zi=zeros(k,1);
    
    for i=1:k
        z=0;
        equal=0;
        while(equal==0)
            if(rem(1+z*M(i,2), Bi(i))==0)
                equal=1;
            elseif(rem(1-z*M(i,2), Bi(i))==0)
                equal=-1;
            else
                z=z+1;
            end
        end
        
        if(equal>0)
            Zi(i)=(1+z*M(i,2))/Bi(i);
        else
            Zi(i)=(1-z*M(i,2))/Bi(i);
        end
    end
    
    for i=1:k
        X=X+Ci(i)*Zi(i)*Bi(i);
    end
    
    if(X<0)
        while(X<0)
            X=X+B;
        end
    else
        while(X>B)
            X=X-B;
        end
    end
    
end
   
        