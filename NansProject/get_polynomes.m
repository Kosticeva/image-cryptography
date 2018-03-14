% funkcija za kreiranje polinoma stepena degree od dobijenih piksela

%prolazimo red po red kroz ucitanu sliku/matricu
%ucitavamo red po red, sekvencijalno, elemente matrice
%u polinom

%polinom ce imati onoliko kolona koliko iznosi ranije odabran stepen

function Ps = get_polynomes(Image, degree)
    
    [L,W]=size(Image);
    Ps=zeros(floor(L*W/degree), degree);
    
    i=1;    %broj redova polinoma
    j=1;    %broj tekuce kolone polinoma(najveca vrednost je degree)
    
    n=1;    %tekuci red slike
    m=1;    %tekuca kolona slike
    
    while (n<=L)
        
        Ps(i,j)=Image(n,m);
        
        m=m+1;
        j=j+1;
        
        if (m>W)
            m=1;
            n=n+1;
        end
        if (j>degree)
            j=1;
            i=i+1;
        end
    end
    
end