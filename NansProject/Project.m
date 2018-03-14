
clear; clc;

% 1.a) ucitavanje slike
pict_name=input('Unesite naziv slike: ', 's');
Img=get_image(pict_name);

% 1.b) pravimo polinome
Img_size=size(Img);

while (0<1)
    S=sprintf('Velicina slike je: %dx%d', Img_size(1), Img_size(2));
    disp(S);
    degree=input('Unesite broj ljudi potreban da otkrije tajnu: ');
    if(rem(Img_size(1)*Img_size(2), degree)~=0 || degree<=2 || degree>=11)
        disp('Pazite da broj ljudi odgovara velicini slike.');
    else
        break
    end
end
Polynomes=get_polynomes(Img, degree);

% 1.c) pravimo nove slike
while (0<1)
    key_num=input('Unesite broj ljudi kojima cete dati kljuc: ');
    if(key_num<=degree || key_num>=11)
        disp('Pazite da broj ljudi sa kljucem ne bude veci od 10 ili manji od prethodno unesene vrednosti.');
    else
        break
    end
end

Keys=uint8(get_keys(Img_size, Polynomes, key_num));

for i=1:key_num
    S=sprintf('K%d.png', i);
    imwrite(Keys(:,:,i), S);
end
