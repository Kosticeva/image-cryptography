%funkcija za premestanje polinoma u matricu dimenzija originalne slike

%proces obrnut funkciji get_polynomes

function ImgIFinal = get_final_image(PolAfter, Key_Size)

    i=1;
    j=1;
    [count,degree]=size(PolAfter);

    ImgFinal=zeros(Key_Size(1),Key_Size(2));
    counter=1;
    
    while(counter<=count)
    
        for l=1:degree
            ImgFinal(i,j)=PolAfter(counter, l);

            j=j+1;

            if(j>Key_Size(2))
                j=1;
                i=i+1;
            end

        end
    
        counter=counter+1;
    
    end
    
    %dobijene vrednosti ImgFinal-a su u double formatu
    %imshow ne prikazuje na dobar nacin matrice u double formatu
    
    ImgIFinal=uint8(ImgFinal);
    
end