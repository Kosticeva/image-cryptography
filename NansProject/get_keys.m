% funkcija za racunanje vrednosti piksela kljuceva na osnovu dobijenih
% vrednosti koeficijenata polinoma

%kljucevi su velicine originalne slike

%kljucevi na svakih degree polja imaju upisanu vrednost 
%koja se dobije kada se u odgovarajucem polinomu 
%umesto x zameni vrednost stranice 3D matrice kljuceva
%na kojoj se kljuc nalazi

function keys = get_keys(Imsize, Ps, key_num)
    
    nums=[];
    keys=ones(Imsize(1), Imsize(2), key_num).*250;
    [~,degree]=size(Ps);
    
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
    
    for k=1:key_num     %tekuci kljuc
        
        i=1;    %tekuci red kljuca
        j=1;    %tekuca kolona kljuca
        counter=1;  %tekuci polinom
        
        while (i<=Imsize(1))
            
%             keys(i,j,k)=rem(polyval(Ps(counter,:),k), 251);          
            
            %preskakanje degree mesta u matrici
            II=i;
            JJ=j;
            
            for u=1:key_num
                if(u>length(nums))
                    break;
                end
                keys(II,JJ,k)=rem(polyval(Ps(counter,:),k), nums(u));
                
                if(JJ>=Imsize(2))
                    JJ=1;
                    II=II+1;
                else
                    JJ=JJ+1;
                end
                
                if(II>Imsize(1))
                    break;
                end
            end
            
            for l=1:degree
                
                j=j+1;
                if(j>Imsize(2))
                    j=1;
                    i=i+1;
                end
                
             end
            
            counter=counter+1;
        end
        
    end

end