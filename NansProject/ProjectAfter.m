
clear; clc;

% 2.a) ucitavanje kljuceva

KeyIdxs=[];
KeysL=[];
degree=input('Koliko je ljudi potrebno da otkrije tajnu? ');

for i=1:degree
    KI=input('Unesite redni broj kljuca: ');
    KeyIdxs=[KeyIdxs KI];
    
    K=input('Unesite naziv kljuca: ', 's');
    KMap=imread(K);
    KeysL(:,:,i)=KMap;   %ucitani kljucevi
    
end

% 2.b) Dobijanje polinoma od vrednosti ucitanih kljuceva
PolAfter=get_after_polynomes(KeyIdxs, KeysL);

% 2.c) Dobijanje konacne slike od vrednosti polinoma
ImgIFinal=get_final_image(PolAfter, size(KeysL(:,:,1)));

imshow(ImgIFinal);

imwrite(ImgIFinal, 'ImageFinal.png');
    
