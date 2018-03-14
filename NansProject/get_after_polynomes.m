%funkcija za dobijanje polinoma od unesenih kljuceva

%paralelno iz svih stranica 3D matrice KeysL
%uzimamo vrednost na (i,j) koordinati
%spajamo uzete vrednosti i sa vrednostima x vektora
%interpolacijom dobijamo polinom
%ciji su koeficijenti nepoznati pikseli slike

%svaki polinom predstavlja sekciju slike
%postoji (duzina*sirina slike)/degree sekcija
%svaka sa po degree celija

function PolAfter = get_after_polynomes(KeyIdxs, KeysL)

    i=1;
    j=1;
    count=1;
    degree=length(KeyIdxs);
    nums=[];
    
    switch(degree)
        case 3
            nums=[251 113];
        case 4
            nums=[251 7 179];
        case 5
            nums=[251 47 241];
        case 6
            nums=[251 47 101 53];
        case 7
            nums=[251 79 241 61];
        case 8
            nums=[251 43 101 241 53];
        case 9
            nums=[251 43 179 241 109];
        case 10
            nums=[251 101 7 241 109 61];
        otherwise
            nums=[251 241 179 101 79 53 43 7];
    end
    
    [n,m,k]=size(KeysL);
    PolAfter=zeros((n*m)/degree, degree);
    
    while (i<=n)
       KeyVals=zeros(length(KeyIdxs),1);

       for l=1:k    %ucitavanje vrednosti
            II=i;
            JJ=j;
                
            M=zeros(length(nums),2);
            
            for u=1:k
                if(u>length(nums))
                    break;
                end
                M(u,:)=[KeysL(II,JJ,l) nums(u)];
                
                if(JJ==m)
                    JJ=1;
                    II=II+1;
                else
                    JJ=JJ+1;
                end
            end

            KeyV=crt(M);
            
            KeyVals(l)=KeyV;
       end

       for l=1:degree   %pomeranje za degree koraka kroz redove
           j=j+1;

           if(j>m)
               j=1;
               i=i+1;
           end

       end

       PolAfter(count, :)=linterp(KeyIdxs, KeyVals); %pretvaranje u polinom
       
       S=sprintf('Ucitano %d piksela, %d-i po redu', degree, count);
       disp(S);
       count=count+1;   %naredni polinom
    end
    
end