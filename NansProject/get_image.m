% funkcija za ucitavanje slike i dovodjenje vrednosti piksela u
% odgovarajuci opseg

function Gray_Im = get_image(pict_name)
    RGB=imread(pict_name);
    Gray_Im=rgb2gray(RGB);
    [L,W]=size(Gray_Im);

    for i=1:L
        for j=1:W
            if Gray_Im(i,j)>250         %Delimo sa 251->
                Gray_Im(i,j)=250;        %svaki broj mora biti <251
            end
        end
    end
end