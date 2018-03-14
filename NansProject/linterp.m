function f=linterp(x,y)
    
f=0;
for a=1:length(x)
    p=y(a);
    for b=1:length(x)
        if a~=b
            p=conv(p, [1 -x(b)])/(x(a)-x(b));
        end
    end
    f=f+p;
end

end
    